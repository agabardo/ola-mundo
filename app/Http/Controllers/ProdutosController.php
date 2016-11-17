<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use App\Produto;
class ProdutosController extends Controller{
    public function index(){
      $produtos = Produto::all();
      return view('produto.index', array('produtos' => $produtos));
    }

    public function show($id){
      $produto = Produto::find($id);
      return view('produto.show', array('produto' => $produto));
    }

    public function create(){
      return view('produto.create');
    }

    public function store(Request $request){
      $produto = new Produto();
      $produto->referencia = $request->input('referencia');
      $produto->titulo = $request->input('titulo');
      $produto->descricao = $request->input('descricao');
      $produto->preco = $request->input('preco');
      if($produto->save()){
        return redirect('produtos');
      }
    }
}
