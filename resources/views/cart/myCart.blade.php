<x-layout>
    <x-slot name="title">
        <title>My Cart</title>
    </x-slot>
    <div class="container d-flex justify-content-center myCartContainer">
        <div class="text-center w-50">
            <h3>My Items</h3>
            <div class="myCartDiv">
                @foreach ($cartItems as $item)
                    <div class="row p-3" style="border-bottom:1px solid black;">
                        <p class="col-3 align-self-center mb-0">{{$item->name}}</p>
                        <p class="col-3 align-self-center mb-0">{{$item->price}} Kyat</p>
                        <p class="col-3 align-self-center mb-0">
                            <a href="{{route('cart.minus', $item->rowId)}}" type="submit" class="btn btn-primary me-4" style="border-radius:50%; padding:1px 9px; width:30px;">-</a>
                            {{$item->qty}}
                            <a href="{{route('cart.plus', $item->rowId)}}" type="submit" class="btn btn-primary ms-4" style="border-radius:50%; padding:1px 9px; width:30px;">+</a>
                        </p>
                       <p class="col-3 align-self-center mb-0">
                            <a href="{{route('cart.destroy', $item->rowId)}}" type="submit" class="btn btn-danger">Remove</a>
                       </p>
                    </div>
                @endforeach
                <div>
                    <p class="text-end">Total: {{$totalPrice}} Kyat</p>
                </div>
            </div>
        </div>
    </div>
</x-layout>
