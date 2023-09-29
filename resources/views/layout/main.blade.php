<!doctype html>
            <html lang="en" data-bs-theme="auto">
              @include('layout.partials._head')
    <body>
               @include('layout.partials._navigation')
            <div class="container-fluid">
            <div class="row">
                @include('layout.partials._sidebar')
                @include('layout.partials._content')
            </div>
        </div>
                @include('layout.partials._scripts')
    </body>
</html>
