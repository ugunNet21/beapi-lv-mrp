<?php

namespace App\Http\Controllers;

use App\Models\Internal\BisPcRFQReqsDetail;
use App\Models\PcPurchaseReqsDetail;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Http\JsonResponse;
use Illuminate\Support\Facades\DB;

class PcPurchaseRequestDetailController extends Controller
{

    public function index(Request $request)
    {
        set_time_limit(1000);
        ini_set('memory_limit', '10G');
        try {
            $fetchDate = Carbon::now();
            $no_PR = $request->input('no_pr');
            // Menggunakan Eloquent untuk mengambil data dengan relasi
            if ($no_PR) {
                $result = PcPurchaseReqsDetail::with('purchaseRequest')->where('No_PR', '=', $no_PR)->get();
            } else {
                $result = PcPurchaseReqsDetail::with('purchaseRequest')->get();
            }
            // $result = PcPurchaseReqsDetail::where('No_PR', '=', $no_PR)->get();

            $batchSize = 50;
            $dataToInserts = [];
            $index = [];
            if ($result->count() > 0) {
                // Hapus duplikasi berdasarkan fetch_date dan No_PR
                BisPcRFQReqsDetail::where(function ($query) use ($fetchDate, $no_PR) {
                    $query->where(DB::raw("DATE_FORMAT(fetch_date, '%Y-%m-%d')"), '=', $fetchDate->format('Y-m-d'))
                        ->orWhere('No_PR', '=', $no_PR);
                })->delete();
                // BisPcRFQReqsDetail::where(
                //     DB::raw("DATE_FORMAT(fetch_date, '%Y-%m-%d')"),
                //     '=',
                //     $fetchDate->format('Y-m-d')
                // )
                //     ->delete();
                foreach ($result as $index => $item) {
                    $dataToInsert = [
                        'No_PR' => $item->No_PR,
                        'No_Detail' => $item->No_Detail,
                        'Kode_Barang' => $item->Kode_Barang,
                        'Satuan' => $item->Satuan,
                        'SSL_PR' => $item->SSL_PR,
                        'Jumlah_Stok' => $item->Jumlah_Stok,
                        'GOO' => $item->GOO,
                        'Jumlah_Order' => $item->Jumlah_Order,
                        'Pembulatan' => $item->Pembulatan,
                        'Keterangan' => $item->Keterangan,
                        'ID' => $item->ID,
                        'fetch_date' => $fetchDate->format('Y-m-d H:i:s'),
                    ];
                    $indexes[] = $index + 1;
                    $dataToInserts[] = $dataToInsert;
                }
                $chunks = array_chunk($dataToInserts, $batchSize);
                foreach ($chunks as $chunk) {
                    BisPcRFQReqsDetail::insert($chunk);
                }
                $responseData = [];
                foreach ($dataToInserts as $key => $data) {
                    $responseData[] = array_change_key_case(array_merge(
                        $data,
                        ['rfq_detail_index' => $indexes[$key]]
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
            return response()->json(['message' => $e->getMessage()], 500);
        }
    }
}
