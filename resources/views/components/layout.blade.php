<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    {{ $title }}
    <link rel="stylesheet" href="{{ asset('../node_modules/bootstrap/dist/css/bootstrap.min.css') }}">
    <link rel="stylesheet" href="{{ asset('../fontawesome-free-6.6.0-web/css/all.min.css') }}">
    <link rel="stylesheet" href="{{ asset('style.css') }}">
</head>
<body>
    <x-navbar />

    {{ $slot }}

    <x-footer />

    <script
      src={{ asset('../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js') }}
    ></script>
</body>
</html>
