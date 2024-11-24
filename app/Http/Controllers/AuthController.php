<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;
use Illuminate\Validation\Rule;

class AuthController extends Controller
{
    public function login()
    {
        return view('auth.login');
    }

    public function register()
    {
        return view('auth.register');
    }

    public function post_login()
    {
        $formData = request()->validate([
            'name' => ['required', Rule::exists('users', 'name')],
            'password' => 'required',
        ]);

        if (auth()->attempt([
            'name' => $formData['name'],
            'password' => $formData['password'],
        ])) {
            if (auth()->user()->role == 'admin') {
                return redirect('/adminPanel')->with('success', 'Welcome, ' . auth()->user()->name . '!');
            } else {
                return redirect('/home')->with('success', 'Welcome, ' . auth()->user()->name . '!');
            }
        }

        dd(auth()->check());
        // return back()->withErrors([
        //     'error' => 'The provided credentials do not match our records.',
        // ]);
    }

    public function post_register()
    {
        $formData = request()->validate([
            'name' => ['required', Rule::unique('users', 'name'), 'min:6', 'max:30'],
            'email' => ['required', 'email', Rule::unique('users', 'email')],
            'password' => 'required|min:6|max:20',
        ]);

        $formData['password'] = Hash::make($formData['password']);
        $formData['image'] = 'uploads/user_image/defaultImage.jpeg';

        $user = User::create($formData);

        auth()->login($user);

        return redirect('/home')->with('success', 'Welcome, ' . $user->name . '!');
    }

    public function logout()
    {
        auth()->logout();

        return redirect('/home')->with('success', 'Goodbye!');
    }

    public function profileEdit()
    {
        return view('books.userProfile');
    }

    public function profileUpdate()
    {
        $user = Auth::user(); // Get the authenticated user

        // Validate the form data
        $formData = request()->validate([
            'name' => 'required|string|max:255',
            'email' => 'required|email|unique:users,email,' . $user->id,
            // 'image' => 'nullable|image|mimes:jpeg,png,jpg,gif|max:2048',
        ]);

        // Handle profile picture upload if provided
        // if (request()->hasFile('profile_picture')) {
        //     // Save new profile picture
        //     $formData['image'] = request()->file('image')->store('uploads/user_image', 'public');
        // }

        // Update the user's profile
        $user->update($formData);

        return redirect()->back()->with('success', 'Profile updated successfully!');
    }
}
