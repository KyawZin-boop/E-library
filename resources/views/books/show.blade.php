<x-layout>
    <x-slot name="title">
        <title>{{$book->title}}</title>
    </x-slot>
    <div class="container detailDiv">
        <div class="bookDetails d-flex flex-column align-items-center justify-content-between">
            <div class="bookTitle fs-3 mt-5 text-success fw-bold">{{$book->title}}</div>
            <img src="../{{$book->image}}" class="detailImg" />
            <div class="text-center">
                <div class="bookAuthor ">By- <a href="" class="author">{{$book->author}}</a></div>
                <div class="bookDescription my-3">{{$book->description}}</div>
                <div class="text-success fw-bold mt-3">MMK - {{$book->price}} Kyat</div>
            </div>
            <form action="" class="mt-4 mb-5 w-100">
                <button type="submit" class="btn btn-primary w-100 py-2 fs-5 border-0 justify-self-end">Add to Cart<i class="fa-solid fa-cart-arrow-down ms-2"></i></button>
            </form>
        </div>
    </div>
</x-layout>
