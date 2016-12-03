@extends('layouts.app')
@section('title', 'Alterar o produto:'. $produto->titulo)
@section('content')
  <h1>Alterar o produto: {{$produto->titulo}}</h1>
  @if (count($errors) > 0)
    <div class="alert alert-danger">
        <ul>
            @foreach ($errors->all() as $error)
                <li>{{$error}}</li>
            @endforeach
        </ul>
    </div>
  @endif

  @if(Session::has('mensagem'))
      <div class="alert alert-success">
          {{Session::get('mensagem')}}
      </div>
  @endif

  {{Form::open(['route'=>['produtos.update',$produto->id],'enctype'=>'multipart/form-data','method'=>'PUT'])}}
  {{Form::label('referencia','Referência',['class'=>'prettyLabels'])}}
  {{Form::text('referencia',$produto->referencia,['class'=>'form-control','required','placeholder'=>'Referência'])}}
  {{Form::label('titulo', 'Título')}}
  {{Form::text('titulo',$produto->titulo,['class'=>'form-control','required','placeholder'=>'Título'])}}
  {{Form::label('descricao', 'Descrição')}}
  {{Form::textarea('descricao',$produto->descricao,['rows'=>3,'class'=>'form-control','required','placeholder'=>'Descrição'])}}
  {{Form::label('preco', 'Preço')}}
  {{Form::text('preco',$produto->preco,['class'=>'form-control','required','placeholder'=>'Preço'])}}
  {{Form::label('fotoproduto', 'Foto')}}
  {{Form::file('fotoproduto',['class'=>'form-control','id'=>'fotoproduto'])}}
  <br/>
  {{Form::submit('Alterar',['class'=>'btn btn-default'])}}
  {{Form::close()}}
@endsection
