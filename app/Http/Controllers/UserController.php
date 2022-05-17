<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class UserController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        // if ($request->has('email'))  return User::where('email',$request->email)->get();
        // Log::channel('User')->info('Haal alle gebruikers op');
        // return  User::all();

        if($request -> has('email'))
        {
        Log::channel('User')->info("Haal gebruiker op met email: " . $request->email);
            return User::where('email', $request->email)->get();

        }
        else
        {
            Log::channel('User')->info('Haal alle gebruikers op');

            return User::all();
        }

    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Log::channel('User')->info('Maak nieuwe gebruiker aan');
        return User::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function show(User $user)
    {
        return $user;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, User $user)
    {
        Log::channel('User')->info('Update gebruiker');

        $user->update($request->all());
        return $user;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\User  $user
     * @return \Illuminate\Http\Response
     */
    public function destroy(User $user)
    {
        Log::channel('User')->info('Verwijder gebruiker');
        $user->delete();
        return $user;
    }
}
