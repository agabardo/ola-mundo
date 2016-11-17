@extends('layouts.app')
@section('title', 'Adicionar um produto')
@section('content')
  <h1>Criar um novo produto</h1>
  {{Form::open(['action' => 'ProdutosController@store'])}}
  {{Form::label('referencia', 'Referência')}}
  {{Form::text('referencia','',['class'=>'form-control','required','placeholder'=>'Referência'])}}
  {{Form::label('titulo', 'Título')}}
  {{Form::text('titulo','',['class'=>'form-control','required','placeholder'=>'Título'])}}
  {{Form::label('descricao', 'Descrição')}}
  {{Form::textarea('descricao','',['rows'=>3,'class'=>'form-control','required','placeholder'=>'Descrição'])}}
  {{Form::label('preco', 'Preço')}}
  {{Form::text('preco','',['class'=>'form-control','required','placeholder'=>'Preço'])}}
  <br/>
  {{Form::submit('Cadastrar!',['class'=>'btn btn-default'])}}
  {{Form::close()}}
@endsection
