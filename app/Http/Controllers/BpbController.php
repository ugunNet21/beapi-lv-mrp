<?php

namespace App\Http\Controllers;

use App\Events\DataRetrieved;
use App\Models\BPB;
use App\Models\Internal\PivotMrpBpb;
use Illuminate\Support\Facades\Validator;
use Illuminate\Database\QueryException;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Carbon\Carbon;
use DateTimeZone;
use Illuminate\Support\Facades\Log;

class BpbController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        set_time_limit(1000);
        ini_set('memory_limit', '10G');
        try {
            $result = BPB::all();
            $batchSize = 50;
            $dataToInserts = [];
            $fetchDate = Carbon::now();
            $index = [];
            if ($result->count() > 0) {
                PivotMrpBpb::where(DB::raw("DATE_FORMAT(fetch_date, '%Y-%m-%d')"), '=', $fetchDate->format('Y-m-d'))
                    ->delete();
                foreach ($result as $index => $item) {
                    $dataToInsert = [
                        'ISS_NO' => $item->ISS_NO,
                        'ISS_DATE' => $item->ISS_DATE,
                        'ISS_STATUS' => $item->ISS_STATUS,
                        'DO_NO' => $item->DO_NO,
                        'MO_NO' => $item->MO_NO,
                        'MO_TYPE' => $item->MO_TYPE,
                        'po_no' => $item->po_no,
                        'PRODUCT_CODE' => $item->PRODUCT_CODE,
                        'PRODUCT_DESC' => $item->PRODUCT_DESC,
                        'prod_unit' => $item->prod_unit,
                        'prod_group' => $item->prod_group,
                        'LOT_NUMBER' => $item->LOT_NUMBER,
                        'iss_qty' => $item->iss_qty,
                        'expired_date' => $item->expired_date,
                        'LOCATION_NO' => $item->LOCATION_NO,
                        'CUSTOMER_CODE' => $item->CUSTOMER_CODE,
                        'CUST_NAME' => $item->CUST_NAME,
                        'exp_date' => $item->exp_date,
                        'actual_date' => $item->actual_date,
                        'loading_date' => $item->loading_date,
                        'execdate' => $item->execdate,
                        'exp_no' => $item->exp_no,
                        'exp_status' => $item->exp_status,
                        'forwarder' => $item->forwarder,
                        'resi_number' => $item->resi_number,
                        'jumlah' => $item->jumlah,
                        'total_vol' => $item->total_vol,
                        'total_weight' => $item->total_weight,
                        'fetch_date' => $fetchDate->format('Y-m-d H:i:s'),
                    ];
                    $indexes[] = $index + 1;
                    $dataToInserts[] = $dataToInsert;
                }
                $chunks = array_chunk($dataToInserts, $batchSize);
                foreach ($chunks as $chunk) {
                    PivotMrpBpb::insert($chunk);
                }
                $responseData = [];
                // Include indexes directly in the response JSON
                foreach ($dataToInserts as $key => $data) {
                    $responseData[] = array_merge($data, ['bpb_index' => $indexes[$key]]);
                }
                return response()->json([
                    'code' => 200,
                    'message' => 'Data Available Insert and Updated successfully',
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
