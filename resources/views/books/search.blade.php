<x-layout>
    <x-slot name="title">
        <title>Search</title>
    </x-slot>
    <div class="container text-center" style="min-height:81.2vh">
        <div class="row justify-content-center mb-4">
            @foreach ($books as $book)
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
            @endforeach
        </div>
    </div>
    <div class="endline"></div>
</x-layout>
