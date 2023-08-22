<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class UserController extends Controller
{
    // show register/create form
    public function create()
    {
        return view('users.register');
    }

    // store user data
    public function store(Request $request)
    {
        // validate the data
        $formFields = $request->validate([
            'name' => ['required', 'min:3'],
            'email' => ['required', 'email', Rule::unique('users', 'email')],
            'password' => 'required|min:8|confirmed'
        ]);

        // hash the password
        $formFields['password'] = bcrypt($formFields['password']);

        // create user
        $user = User::create($formFields);

        // sign in the user
        auth()->login($user);

        // redirect to home page
        return redirect('/')->with('message', 'Thanks for signing up!');
    }

    public function logout(Request $request)
    {
        auth()->logout();

        $request->session()->invalidate();
        $request->session()->regenerateToken();

        return redirect('/')->with('message', 'You have been logged out!');
    }

    // show login form
    public function login()
    {
        return view('users.login');
    }

    // authenticate user
    public function authenticate(Request $request)
    {
        // validate the data
        $formFields = $request->validate([
            'email' => ['required', 'email'],
            'password' => 'required'
        ]);

        // attempt to authenticate the user
        if (auth()->attempt($formFields)) {
            $request->session()->regenerate();
            // redirect to home page
            return redirect('/')->with('message', 'You have been logged in!');
        } else {
            return back()->withErrors(['email' => 'Invalid Credentials'])->onlyInput('email');
        }
    }
}
