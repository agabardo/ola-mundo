<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Http\Requests;
use App\Produto;
use Session;
class ProdutosController extends Controller{

    /*
    * Método que busca todos os dados de produtos do banco de dados e
    * carrega a view passando os dados dos produtos como parâmetro.
    */
    public function index(){
      $produtos = Produto::paginate(4);
      return view('produto.index', array('produtos' => $produtos,'busca'=>null));
    }

    public function buscar(Request $request){
      $produtos = Produto::where('titulo', 'LIKE', '%'.$request->input('busca').'%')->orwhere('descricao', 'LIKE', '%'.$request->input('busca').'%')->paginate(4);
      return view('produto.index', array('produtos' => $produtos,'busca'=>$request->input('busca')));
    }

    /*
    * Método que busca os dados de um produto do banco de dados e
    * carrega a view passando os dados de um produto como parâmetro.
    */
    public function show($id){
      $produto = Produto::find($id);
      return view('produto.show', array('produto' => $produto));
    }

    /*
    * Método que carrega a view com um formulário para criar um produto.
    */
    public function create(){
      if (Auth::check()) {
        return view('produto.create');
      }
      else{
        return redirect ('login');
      }
    }

    /*
    * Salvando os dados de um novo produto por meio do método save() do
    * model Produto.
    */
    public function store(Request $request){
      if(Auth::check()){
        $this->validate($request, ['referencia' => 'required|unique:produtos|min:3','titulo' => 'required|min:3',]);
        $produto = new Produto();
        $produto->referencia = $request->input('referencia');
        $produto->titulo = $request->input('titulo');
        $produto->descricao = $request->input('descricao');
        $produto->preco = $request->input('preco');
        if($produto->save()){
          return redirect('produtos');
        }
      }
      else{
        return redirect ('login');
      }
    }

    /*
    * Carregando um produto para editar.
    */
    public function edit($id){
      if(Auth::check()){
        $produto = Produto::find($id);
        return view('produto.edit', array('produto' => $produto));
      }
      else{
        return redirect ('login');
      }
    }

    /**
    * Salvando os dados da alteração de um produto recebido de um formulário.
    */
    public function update($id, Request $request){
      if(Auth::check()){
        $produto = Produto::find($id);
        $this->validate($request, [
          'referencia' => 'required|min:3',
          'titulo' => 'required|min:3',
          'fotoproduto' => 'mimetypes:image/jpeg',
        ]);
        //Se a requisição HTTP incluir o arquivo no campo 'fotoproduto'.
        if($request->hasFile('fotoproduto')){
          $imagem = $request->file('fotoproduto');
          $nomearquivo  = md5($id) .".". $imagem->getClientOriginalExtension();
          $request->file('fotoproduto')->move(public_path('./img/produtos/'), $nomearquivo);
        }
        $produto->referencia = $request->input('referencia');
        $produto->titulo = $request->input('titulo');
        $produto->descricao = $request->input('descricao');
        $produto->preco = $request->input('preco');
        $produto->save();
        Session::flash('mensagem', 'Produto alterado com sucesso.');
        return redirect()->back();
      }
      else{
        return redirect ('login');
      }
    }

    /**
    * Método usado para excluir um produto.
    */
    public function destroy($id){
      if(Auth::check()){
        $produto = Produto::find($id);
        $produto->delete();
        Session::flash('mensagem', 'Produto excluído com sucesso.');
        return redirect()->back();
      }
      else{
        return redirect ('login');
      }
    }
}
