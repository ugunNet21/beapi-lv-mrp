<?php

namespace App\Http\Controllers\Micro;

use App\Http\Controllers\Controller;
use App\Models\Internal\BisPcRFQReqsDetail;
use Illuminate\Http\Request;

class BisPcRFQDetailController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $no_PR = $request->input('no_pr');
        $bisPRFQMicroDet = BisPcRFQReqsDetail::where('NO_PR', '=', $no_PR)->get();
        if ($bisPRFQMicroDet->count() > 0) {
            return response()->json([
                'code' => 200,
                'message' => "Success Data Available",
                'data' => $bisPRFQMicroDet
            ], 200);
        } else {
            return response()->json([
                'code' => 404,
                'message' => "Data not Found",
                'data' => null
            ], 404);
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
        //
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
    }
}
