<?php

namespace App\Http\Controllers;

use App\Models\Internal\BisPcRFQReqs;
use App\Models\PcPurchaseReqs;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;

class PcPurchaseReqsController extends Controller
{

    public function index()
    {
        set_time_limit(1000);
        ini_set('memory_limit', '10G');
        try {

            $result = PcPurchaseReqs::all();
            $fetchDate = Carbon::now();
            $batchSize = 50;
            $dataToInserts = [];
            $index = [];
            if ($result->count() > 0) {
                BisPcRFQReqs::where(DB::raw("DATE_FORMAT(fetch_date, '%Y-%m-%d')"), '=', $fetchDate->format('Y-m-d'))
                    ->delete();
                foreach ($result as $index => $item) {
                    $dataToInsert = [
                        'No_PR' => $item->No_PR,
                        'Tgl_PR' => $item->Tgl_PR,
                        'Kode_Principal' => $item->Kode_Principal,
                        'Kode_Divisi_Produk' => $item->Kode_Divisi_Produk,
                        'Tgl_Dibutuhkan' => $item->Tgl_Dibutuhkan,
                        'Kode_Cabang_Tujuan' => $item->Kode_Cabang_Tujuan,
                        'Alamat_Kirim' => $item->Alamat_Kirim,
                        'Status' => $item->Status,
                        'User_ID' => $item->User_ID,
                        'Time_Stamp' => date('Y-m-d H:i:s', strtotime($item->Time_Stamp)),
                        'Pengali' => $item->Pengali,
                        'fetch_date' => $fetchDate->format('Y-m-d H:i:s'),
                    ];
                    $indexes[] = $index + 1;
                    $dataToInserts[] = $dataToInsert;
                }
                $chunks = array_chunk($dataToInserts, $batchSize);
                foreach ($chunks as $chunk) {
                    BisPcRFQReqs::insert($chunk);
                }
                $responseData = [];
                foreach ($dataToInserts as $key => $data) {
                    $responseData[] = array_change_key_case(array_merge(
                        $data,
                        ['rfq_index' => $indexes[$key]]
                    ), CASE_LOWER);
                }

                return response()->json([
                    'code' => 200,
                    'message' => 'Data Available Inserted and Updated successfully',
                    'data' => $responseData,
                ], 200);
            } else {
                return response()->json([
                    'code' => 404,
                    'message' => 'Data Not Available',
                    'data' => null,
                ], 404);
            }
        } catch (\Exception $e) {
            return response()->json([
                'status' => false,
                'message' => 'Error fetching or inserting/updating data',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
}

 // public function show(int $id)
    // {
    //     $purchaseRequest = PcPurchaseReqs::findOrFail($id);

    //     return response()->json(['data' => $purchaseRequest]);
    // }
 // set_time_limit(1000);
        // ini_set('memory_limit', '10G');
        // try {
        //     $time_Stamp = Carbon::now();
        //     $result = PcPurchaseReqs::all();
        //     if ($result->count() > 0) {
        //         $lowercaseData = $result->map(function ($item, $index) use ($time_Stamp) {
        //             return array_change_key_case(array_merge(
        //                 $item->toArray(),
        //                 ['fetch_date' => $time_Stamp->format('Y-m-d H:i:s')],
        //                 ['rfq_index' => $index + 1]
        //             ), CASE_LOWER);
        //         });
        //         return response()->json([
        //             'code' => 200,
        //             'message' => 'Data Available Inserted and Updated successfully',
        //             'data' => $lowercaseData,
        //         ], 200);
        //     } else {
        //         return response()->json([
        //             'code' => 404,
        //             'message' => 'Data Not Available',
        //             'data' => null,
        //         ], 404);
        //     }
        // } catch (\Exception $e) {
        //     return response()->json([
        //         'status' => false,
        //         'message' => 'Error fetching or inserting/updating data',
        //         'error' => $e->getMessage(),
        //     ], 500);
        // }
