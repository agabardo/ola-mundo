<html>
    <head>
        <title>Olá Mundo - @yield('title')</title>
        {{Html::style('css/bootstrap.min.css')}}
        {{Html::style('css/bootstrap-theme.min.css')}}
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <div class="container">
            @yield('content')
        </div>
        {{Html::script('js/jquery-3.1.1.min.js')}}
        {{Html::script('js/bootstrap.min.js')}}
    </body>
</html>
