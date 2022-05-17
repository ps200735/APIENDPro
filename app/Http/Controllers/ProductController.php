<?php

namespace App\Http\Controllers;

use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        if ($request->has('name')){
            Log::channel('Product')->info('Haal product op met naam: ' . $request->name);
            return Product::where('name', 'like', '%'.$request->name.'%')->get();
        }
       else if ($request->has('ID')){
            Log::channel('Product')->info('Haal product op met ID: ' . $request->ID);
            return Product::where('id', $request->ID)->get();
        }
      else  if ($request->has('sort'))
        {
            Log::channel('Product')->info('Haal alle producten op gesorteerd op: ' . $request->sort);
            return Product::orderBy($request->sort)->get();
        }
        else{
             Log::channel('Product')->info('Haal alle producten op');
        return  Product::all();
        }


    }

        public function indexCategory(Request $request, $id)
        {
            if ($request->has('name'))
            {
                Log::channel('Product')->info('Haal product op waar de category is'.$id.' met naam: ' . $request->name);
                $producten = DB::select('select * from products where category_id = ? and name like ?', [$id, '%'.$request->name.'%']);
                return $producten;
            }

         else if ($request->has('sort' )){
            Log::channel('Product')->info('Haal alle producten op waar de category is'.$id.' gesorteerd op: ' . $request->sort);
            return Product::where('category_id',$id)->orderBy($request->sort)->get();
         }else{
            Log::channel('Product')->info('Haal alle producten op waar de category is'.$id);
            return Product::where('category_id',$id)->get();}

        }
    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        Log::channel('Product')->info('Maak nieuwe product aan');
        return Product::create($request->all());
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        Log::channel('Product')->info('Haal product op met ID: ' . $product->id);
        return $product;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Product $product)
    {
        Log::channel('Product')->info('Update product');
        $product->update($request->all());
        return $product;
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy(Request $request)
    {//

    }
    public function delete($id)
    {
        Log::channel('Product')->info('Verwijder product met ID: ' . $id);
        Product::where('id', $id)->delete();
    }


}
