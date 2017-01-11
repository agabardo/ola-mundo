<?php
namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\Http\Requests;
use Mail;

class ContatoController extends Controller{
  public function index(){
    $data['titulo'] = "Minha página de contato.";
    return view('contato',$data);
  }

  public function enviar(Request $request){
    $data = array(
      'assunto' => $request->input('assunto'),
      'mensagem' => $request->input('mensagem'),
    );
    Mail::send('mensagem', $data, function ($message) {
      $message->from('ademir.gabbardo@gmail.com', 'Ademir Gabardo');
      $message->subject("Mensagem encaminhada por meio do formulário de contato.");
      $message->to('ademir.gabbardo@gmail.com')->cc('ademirgabardo@gmail.com');
    });
    return redirect ('contato');
  }
}
