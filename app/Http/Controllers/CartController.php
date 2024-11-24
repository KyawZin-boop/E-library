<?php

namespace App\Http\Controllers;

use App\Models\Books;
use Gloudemans\Shoppingcart\Facades\Cart;
use Illuminate\Http\Request;

class CartController extends Controller
{
    public function store(Request $request)
    {
        // dd($request['bookId']);
        $book = Books::findOrFail($request->input('bookId'));
        Cart::add(
            $book->id,
            $book->title,
            1,
            $book->price
        );

        return redirect()->back()->with('message', 'Successfully Added!');
    }

    public function show()
    {
        $cartItems = Cart::content();
        $totalPrice = $cartItems->reduce(function ($carry, $item) {
            return $carry + ($item->price * $item->qty);
        }, 0);
        return view('cart.myCart', compact('cartItems', 'totalPrice'));
    }

    public function plus($rowId)
    {
        Cart::get($rowId)->qty++;
        $cartItems = Cart::content();
        return redirect()->back()->with('cartItems', $cartItems);
    }

    public function minus($rowId)
    {
        Cart::get($rowId)->qty--;
        $cartItems = Cart::content();
        return redirect()->back()->with('cartItems', $cartItems);
    }

    public function destroy($rowId)
    {
        Cart::remove($rowId);
        $cartItems = Cart::content();
        return redirect()->back()->with('cartItems', $cartItems);
    }
}
