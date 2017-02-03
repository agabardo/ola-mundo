<?php
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
class checarValidacaoBuscaTest extends TestCase{
    public function testExample(){
      $this->visit('/produtos')->press('Buscar')->seePageIs('/produtos');
      $this->visit('/produtos')->type('Verde', 'busca')->press('Buscar')->seePageIs('/produtos/buscar');
    }
}
