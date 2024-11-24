<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Document</title>
  <link rel="stylesheet" href={{ asset('../node_modules/bootstrap/dist/css/bootstrap.min.css') }} />
  <link rel="stylesheet" href={{ asset('registerStyle.css') }} />
</head>
<body>
    <div id="registerDeco">
        <form id="register_form" method="post">
            @csrf
            <div id="registerContainer" data-bs-theme="dark">
                <!-- <a class="btn btn-close exit" aria-label="Close" href="home.php"></a> -->
                <div class="title">
                <h1 class="registerTitle">Register</h1>
                </div>
                <input type="text" name="name" id="username" class="text" required />
                <label class="uname">
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
                    <div class="text-center text-danger nameError">{{$message}}</div>
                @enderror
                <input type="email" name="email" id="email" class="text" required />
                <label class="email">
                    <span style="transition-delay: 0ms">E</span>
                    <span style="transition-delay: 50ms">m</span>
                    <span style="transition-delay: 100ms">a</span>
                    <span style="transition-delay: 150ms">i</span>
                    <span style="transition-delay: 200ms">l</span>
                </label>
                @error('email')
                    <div class="text-center text-danger emailError">{{$message}}</div>
                @enderror
                <input type="password" name="password" id="password" class="text userPassword" required />
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
                <div class="passwordStrength d-none"><span class="showStrength fw-bold me-3"></span><span class="weakPass me-2 typePass"></span><span class="mediumPass me-2 typePass"></span><span class="strongPass me-2 typePass"></span></div>
                <div class="errorLog text-danger text-center"></div>
                <button type="submit" name="btnRegister" class="registerButton">
                REGISTER
                </button>
                <div class="login">
                Already have an account?<a href="/interview_test/public/login">LOGIN.</a>
                </div>
            </div>
        </form>
    </div>
</body>
<script src={{ asset('passwordCheck.js') }}></script>
</html>
