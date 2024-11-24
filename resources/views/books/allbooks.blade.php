<x-layout>
    <x-slot name="title">
        <title>All Books</title>
    </x-slot>
    @if(session('message'))
    <div class="container">
        <div class="alert alert-success" role="alert">
            {{session('message')}}
        </div>
    </div>
    @endif
    <div class="modify-container me-md-5 pe-md-3">
        <nav id="navbar-example3" class="h-100 d-flex flex-column categoryNav">
        @foreach ($category as $cate)
            <nav class="nav nav-pills modify">
                <a class="nav-link" href="#{{$cate->name}}">{{$cate->name}}</a>
            </nav>
        @endforeach
        </nav>
    </div>
    <div class="content ms-xl-5">
        <div data-bs-spy="scroll"
            data-bs-target="#navbar-example3"
            data-bs-target="#navbar-example"
            data-bs-smooth-scroll="true"
            class="scrollspy-example-2 sec category"
            tabindex="0">
            @foreach ($category as $cate)
                <div id={{$cate->name}} class="container text-center">
                    <div class="categoryTitle pb-2 mb-4">{{$cate->name}}</div>
                    <div class="row justify-content-center mb-4 {{$cate->name}}">
                    @foreach ($books as $book)
                        @if($book->category == $cate)
                            <div class="testing col-12 col-sm-4 col-md-3 col-xl-2">
                                <div class="cBody mb-4">
                                    <img src={{$book->image}} class="allbooksImg my-2" />
                                    <div class="card-body">
                                        <h6 class="my-2">{{$book->title}}</h6>
                                        <span>By- </span><a href="" class="author">{{$book->author}}</a>
                                    </div>
                                </div>
                                <div class="mb-2">
                                    <a href="./books/{{$book->slug}}" class="btn btn-outline-success w-50">Details</a>
                                    @if($cart->where('id', $book->id)->count())
                                        <span class="btn btn-success ms-1">In Cart</span>
                                    @else
                                        <form action={{route('cart.store')}} method="POST" class="d-inline-block">
                                            @csrf
                                            <input type="hidden" name="bookId" value={{$book->id}}>
                                            <button type="submit" class="btn btn-primary border-0 ms-3">
                                                <i class="fa-solid fa-cart-arrow-down"></i>
                                            </button>
                                        </form>
                                    @endif
                                </div>
                            </div>
                        @endif
                    @endforeach
                    </div>
                    <div class="endline"></div>
                </div>
            @endforeach
        </div>
    </div>
</x-layout>
