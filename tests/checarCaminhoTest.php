<?php
use Illuminate\Foundation\Testing\WithoutMiddleware;
use Illuminate\Foundation\Testing\DatabaseMigrations;
use Illuminate\Foundation\Testing\DatabaseTransactions;
class checarCaminhoTest extends TestCase{
    public function testExample(){
      $this->visit('/')->click('Produtos')->seePageIs('/produtos');
      $this->visit('/')->click('Contato')->seePageIs('/contato');
      $this->visit('/')->click('Login')->seePageIs('/login');
      $this->visit('/')->click('Registrar')->seePageIs('/register');
    }
}
