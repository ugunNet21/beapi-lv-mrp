<?php

namespace App\Http\Controllers;

use App\Models\Internal\PivotMrpMOPending;
use App\Models\MOPending;
use Carbon\Carbon;
use DateTimeZone;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class MOPendingController extends Controller
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
            $result = MOPending::all();
            $batchSize = 50;
            $dataToInsert = [];
            $fetchDate = Carbon::now();
            $index = [];
            if ($result->count() > 0) {
                PivotMrpMOPending::where(DB::raw("DATE_FORMAT(fetch_date, '%Y-%m-%d')"), '=', $fetchDate->format('Y-m-d'))
                    ->delete();
                foreach ($result as $index => $item) {
                    $dataToInsert[] = [
                        'MoNo' => $item->{'Mo No'},
                        'MoDate' => $item->{'Mo Date'},
                        'MoType' => $item->{'Mo Type'},
                        'MoGroup' => $item->{'Mo Group'},
                        'CustomerCode' => $item->{'Customer Code'},
                        'Customer' => $item->{'Customer'},
                        'OrderStatus' => $item->{'Order Status'},
                        'ProductCode' => $item->{'Product Code'},
                        'ProductDesc' => $item->{'Product Desc'},
                        'OrderQty' => $item->{'Order Qty'},
                        'ShipQty' => $item->{'Ship Qty'},
                        'PendingQty' => $item->{'Pending Qty'},
                        'SoNo' => $item->{'So No'},
                        'note' => $item->{'Remark (used for)'},
                        'fetch_date' => $fetchDate->format('Y-m-d H:i:s'),
                        // 'index' => $index,
                    ];
                    $indexes[] = $index;
                }
                $chunks = array_chunk($dataToInsert, $batchSize);
                foreach ($chunks as $chunk) {
                    PivotMrpMOPending::insert($chunk);
                }
                foreach ($indexes as $key => $index) {
                    $dataToInsert[$key]['mop_index'] = $index +1;
                }
                return response()->json([
                    'status' => 200,
                    'message' => 'Data Available Insert and Updated successfully',
                    'data' => $dataToInsert,
                ], 200);
            } else {
                return response()->json([
                    'status' => false,
                    'message' => 'Data Not Available',
                    'data' => null,
                ], 404);
            }
        } catch (\Exception $e) {
            // Log the exception details
            Log::error('Error fetching or inserting/updating data', ['error' => $e->getMessage()]);

            return response()->json([
                'status' => false,
                'message' => 'Error fetching or inserting/updating data',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
}
