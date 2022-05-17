<?php

namespace App\Http\Controllers;

use App\Models\Favorietproducts;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class FavorietproductsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {

        if ($request->has('User'))
        {
            Log::channel('Favorietproducts')->info('Haal Favorietproducts op van gebruiker met ID: ' . $request->User);
            return Favorietproducts::where('user_id', $request->User)->get();
        }else{
            Log::channel('Favorietproducts')->info('Haal Favorietproducts op');
            return Favorietproducts::all();
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
        Log::channel('Favorietproducts')->info('Maak nieuwe Favorietproducts aan');
        return Favorietproducts::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Favorietproducts  $favorietproducts
     * @return \Illuminate\Http\Response
     */
    public function show(Favorietproducts $favorietproducts)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Favorietproducts  $favorietproducts
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Favorietproducts $favorietproducts)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Favorietproducts  $favorietproducts
     * @return \Illuminate\Http\Response
     */
    public function destroy(Favorietproducts $favorietproducts)
    {
        Log::channel('Favorietproducts')->info('Verwijder Favorietproducts');
        $favorietproducts->delete();
        return $favorietproducts;
    }
}
