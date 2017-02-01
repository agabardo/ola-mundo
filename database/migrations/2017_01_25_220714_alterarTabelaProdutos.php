<?php
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;
class AlterarTabelaProdutos extends Migration{
    public function up(){
      Schema::table('produtos', function ($table) {
        $table->softDeletes();
      });
    }
}
