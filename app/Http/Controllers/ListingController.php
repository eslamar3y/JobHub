<?php

namespace App\Http\Controllers;

use auth;
use App\Models\Listing;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ListingController extends Controller
{
    // show all listings
    public function index(Request $request)
    {
        // dd($request->tag);
        return view(
            'listings.index',
            [
                // 'listings' => Listing::latest()->filter($request->only('tag', 'search'))->paginate(6)
                'listings' => Listing::latest()->filter($request->only('tag', 'search'))->simplepaginate(6)
            ],
        );
    }

    // show single listing
    public function show(Listing $listing)
    {
        return view(
            'listings.show',
            [
                'listing' => $listing
            ]
        );
    }

    // show create form
    public function create()
    {
        return view('listings.create');
    }

    // store listing data
    public function store(Request $request)
    {
        $formFields = $request->validate([
            'title' => 'required',
            'tags' => 'required',
            'company' => ['required', Rule::unique('listings', 'company')],
            'location' => 'required',
            'website' => ['required'],
            'description' => 'required',
            'email' => ['required', 'email'],
        ]);

        if ($request->hasFile('logo')) {
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }

        $formFields['user_id'] = auth()->id();

        Listing::create($formFields);

        return redirect('/')->with('message', 'Listing created successfully');
    }

    public function edit(Listing $listing)
    {
        if ($listing->user_id != auth()->id()) {
            abort(403, 'Unauthorized action.');
        }
        return view('listings.edit', ['listing' => $listing]);
    }

    public function update(Request $request, Listing $listing)
    {
        if ($listing->user_id != auth()->id()) {
            abort(403, 'Unauthorized action.');
        }
        $formFields = $request->validate([
            'title' => 'required',
            'tags' => 'required',
            'company' => ['required'],
            'location' => 'required',
            'website' => ['required'],
            'description' => 'required',
            'email' => ['required', 'email'],
        ]);

        if ($request->hasFile('logo')) {
            $formFields['logo'] = $request->file('logo')->store('logos', 'public');
        }

        $listing->update($formFields);

        return back()->with('message', 'Listing updated successfully');
    }

    public function destroy(Listing $listing)
    {
        if ($listing->user_id != auth()->id()) {
            abort(403, 'Unauthorized action.');
        }
        $listing->delete();

        return redirect('/')->with('message', 'Listing deleted successfully');
    }

    // manage listings
    public function manage()
    {
        return view(
            'listings.manage',
            [
                'listings' => Listing::where('user_id', auth()->id())->get()
                // 'listings' => auth()->user()->listings()->get()
            ]
        );
    }
}
