<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" href={{  asset('../node_modules/bootstrap/dist/css/bootstrap.min.css') }} />
    <link rel="stylesheet" href={{  asset('loginStyle.css') }} />
</head>
<body>
    <div id="loginDeco">
        <form id="login_form" method="post">
            @csrf
            <div id="loginContainer" data-bs-theme="dark">
                <div class="title">
                    <h1 class="loginTitle">LogIn</h1>
                </div>
                <input type="text" name="name" id="username" class="text" required />
                <label class="email">
                    <span style="transition-delay: 0ms">U</span>
                    <span style="transition-delay: 50ms">s</span>
                    <span style="transition-delay: 100ms">e</span>
                    <span style="transition-delay: 150ms">r</span>
                    <span style="transition-delay: 200ms">N</span>
                    <span style="transition-delay: 250ms">a</span>
                    <span style="transition-delay: 300ms">m</span>
                    <span style="transition-delay: 350ms">e</span>
                </label>
                @error('name')
                    <div class="text-center text-danger">{{$message}}</div>
                @enderror
                <input type="password" name="password" id="password" class="text" required />
                <label class="password">
                    <span style="transition-delay: 0ms">P</span>
                    <span style="transition-delay: 50ms">a</span>
                    <span style="transition-delay: 100ms">s</span>
                    <span style="transition-delay: 150ms">s</span>
                    <span style="transition-delay: 200ms">w</span>
                    <span style="transition-delay: 250ms">o</span>
                    <span style="transition-delay: 300ms">r</span>
                    <span style="transition-delay: 350ms">d</span>
                </label>
                @error('password')
                    <div class="text-center text-danger">{{$message}}</div>
                @enderror
                @error('error')
                    <div class="text-center text-danger">{{$message}}</div>
                @enderror
                <button type="submit" name="sub" class="loginButton">LOGIN</button>
                <div class="register">
                    Don't have an account?<a href="./register">Register.</a>
                </div>
                <div class="guest"><a href="/interview_test/public/home">Login as Guest</a></div>
            </div>
        </form>
    </div>
    @section('scripts')
        <script>
            const errorDiv = document.querySelector('.errorLog');
            const loginContainer =document.getElementById('loginContainer');
        </script>
    @endsection
</body>
</html>
