<?php

namespace App\Http\Controllers\Micro;

use App\Http\Controllers\Controller;
use App\Models\Internal\BisPcRFQReqs;
use Illuminate\Http\Request;

class BisPcRFQController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        try {
            $bisPRFQMicro = BisPcRFQReqs::all();
            if ($bisPRFQMicro->count() > 0) {
                $responseData = $bisPRFQMicro->map(function ($item) {
                    return array_change_key_case($item->toArray(), CASE_LOWER);
                });
                return response()->json([
                    'status' => 200,
                    'message' => "Success Data Available",
                    'data' => $responseData,
                ], 200);
            } else {
                return response()->json([
                    'status' => 404,
                    'message' => "Data not Available"
                ], 404);
            }
        } catch (\Exception $e) {
            return response()->json([
                'status' => 404,
                'message' => 'Error: ' . $e->getMessage(),
            ]);
        }
    }

    public function store(Request $request)
    {
        try {
            $validatedData = $request->validate([
                'No_PR' => 'required|string|max:255',
                'Tgl_PR' => 'required|date',
                'Kode_Principal' => 'required|string|max:5',
                'Kode_Divisi_Produk' => 'required|string|max:5',
                'Tgl_Dibutuhkan' => 'required|date',
                'Kode_Cabang_Tujuan' => 'required|string|max:5',
                'Alamat_Kirim' => 'nullable|string|max:50',
                'Status' => 'required|in:PENDING,SENT,POSTING,BATAL',
                'User_ID' => 'required|string|max:20',
                'Time_Stamp' => 'required|date',
                'Pengali' => 'required|numeric|between:0,999.99',
                'fetch_date' => 'required|date',
            ]);

            $record = BisPcRFQReqs::insert($validatedData);
            return response()->json([
                'status' => 201,
                'message' => 'Data created successfully',
                'data' => $record,
            ], 201);
        } catch (\Exception $e) {
            return response()->json([
                'status' => 500,
                'message' => 'Internal Server Error',
                'error' => $e->getMessage(),
            ], 500);
        }
    }


    public function show($No_PR)
    {
        // Find a record by its primary key
        $record = BisPcRFQReqs::find($No_PR);

        if (!$record) {
            return response()->json([
                'status' => 404,
                'message' => 'Record not found',
            ], 404);
        }

        return response()->json([
            'status' => 200,
            'message' => 'Success',
            'data' => $record,
        ], 200);
    }

    public function update(Request $request, $id)
    {
        $record = BisPcRFQReqs::find($id);

        if (!$record) {
            return response()->json([
                'status' => 404,
                'message' => 'Record not found',
            ], 404);
        }

        $validatedData = $request->validate([
            'No_PR' => 'required|string|max:255',
            // ... (Include other fields and validation rules as needed)
        ]);

        $record->update($validatedData);

        return response()->json([
            'status' => 200,
            'message' => 'Data updated successfully',
            'data' => $record,
        ], 200);
    }

    public function destroy($id)
    {
        $record = BisPcRFQReqs::find($id);

        if (!$record) {
            return response()->json([
                'status' => 404,
                'message' => 'Record not found',
            ], 404);
        }

        $record->delete();

        return response()->json([
            'status' => 200,
            'message' => 'Data deleted successfully',
        ], 200);
    }
}



            // $dataBisPCRFQ = new BisPcRFQReqs;
            // $dataBisPCRFQ->No_PR = $validatedData['No_PR'];
            // $dataBisPCRFQ->Tgl_PR = $validatedData['Tgl_PR'];
            // $dataBisPCRFQ->Kode_Principal = $validatedData['Kode_Principal'];
            // $dataBisPCRFQ->Kode_Divisi_Produk = $validatedData['Kode_Divisi_Produk'];
            // $dataBisPCRFQ->Tgl_Dibutuhkan = $validatedData['Tgl_Dibutuhkan'];
            // $dataBisPCRFQ->Kode_Cabang_Tujuan = $validatedData['Kode_Cabang_Tujuan'];
            // $dataBisPCRFQ->Alamat_Kirim = $validatedData['Alamat_Kirim'] ?? null;
            // $dataBisPCRFQ->Status = $validatedData['Status'];
            // $dataBisPCRFQ->User_ID = $validatedData['User_ID'];
            // $dataBisPCRFQ->Time_Stamp = $validatedData['Time_Stamp'];
            // $dataBisPCRFQ->Pengali = $validatedData['Pengali'];
            // $dataBisPCRFQ->fetch_date = $validatedData['fetch_date'];

            // $dataBisPCRFQ->insert();
