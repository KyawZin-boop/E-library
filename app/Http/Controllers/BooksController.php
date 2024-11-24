<?php

namespace App\Http\Controllers;

use App\Models\Books;
use App\Models\Category;
use Gloudemans\Shoppingcart\Facades\Cart;

class BooksController extends Controller
{
    public function index()
    {
        return view('books.index', [
            'latestBooks' => Books::orderByDesc("id")->take(6)->get(),
            'popularBooks' => Books::orderByDesc("views")->take(6)->get(),
            'cart' => Cart::content(),
        ]);
    }

    public function allbooks()
    {
        return view('books.allbooks', [
            'books' => Books::all(),
            'category' => Category::all(),
            'cart' => Cart::content(),
        ]);
    }

    public function show($slug)
    {
        return view('books.show', [
            'book' => Books::where('slug', $slug)->first(),
        ]);
    }

    public function search()
    {
        return view('books.search', [
            'books' => Books::latest()->filter(request(['search']))->get(),
            'cart' => Cart::content(),
        ]);
    }
}
