<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It's a breeze. Simply tell Laravel the URIs it should respond to
| and give it the controller to call when that URI is requested.
|
*/

Route::get('/', function () {
    return view('welcome');
});

/*
Route::get('/contato', function () {
    //return view('contato');
});*/

Route::resource('/contato', 'ContatoController');
Route::resource('produtos', 'ProdutosController');
Route::post('produtos/buscar', 'ProdutosController@buscar');
Route::get('adicionar-produto', 'ProdutosController@create');
Route::get('produtos/{id}/editar', 'ProdutosController@edit');
Route::get('produtos/{id}/detalhes', 'ProdutosController@show');

Route::auth();
Route::get('/home', 'HomeController@index');
