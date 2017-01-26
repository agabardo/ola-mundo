<?php
use Illuminate\Database\Seeder;
class ComentariosTableSeeder extends Seeder{
    public function run()
    {
        DB::table('comentarios')->insert([
          'produto_id' => 1,
          'usuario'=> "John Doe",
          'comentario'=> "Produto de boa qualidade",
          'classificassao'=> 5,
          'created_at' => date("Y/m/d h:i:s"),
          'updated_at' => date("Y/m/d h:i:s"),
        ]);
        DB::table('comentarios')->insert([
          'produto_id' => 1,
          'usuario'=> "Susan Doe",
          'comentario'=> "Gostei muito dessa garrafa",
          'classificassao'=> 5,
          'created_at' => date("Y/m/d h:i:s"),
          'updated_at' => date("Y/m/d h:i:s"),
        ]);
        DB::table('comentarios')->insert([
          'produto_id' => 1,
          'usuario'=> "Mike Doe",
          'comentario'=> "Obrigado por esse excelente produto.",
          'classificassao'=> 4,
          'created_at' => date("Y/m/d h:i:s"),
          'updated_at' => date("Y/m/d h:i:s"),
        ]);
    }
}
