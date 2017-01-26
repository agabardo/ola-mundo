<?php
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
class CreateComentariosTable extends Migration{
	public function up(){
		Schema::create('comentarios', function (Blueprint $table) {
			$table->increments('id');
			$table->integer('produto_id');
			$table->string('usuario');
			$table->string('comentario');
			$table->integer('classificassao');
      $table->timestamps();
			$table->foreign('produto_id')->references('id')->on('produtos');
		});
	}
}
