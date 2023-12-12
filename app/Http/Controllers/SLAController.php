<?php

namespace App\Http\Controllers;

use App\Events\SLADataRetrieved;
use App\Models\Internal\PivotMrpSLA;
use App\Models\SLA;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Carbon\Carbon;
use DateTimeZone;
use Illuminate\Support\Facades\Log;

class SLAController extends Controller
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
            $result = SLA::all();
            $batchSize = 50;
            $dataToInserts = [];
            $fetchDate = Carbon::now();
            $index = [];
            if ($result->count() > 0) {
                PivotMrpSLA::where(DB::raw("DATE_FORMAT(fetch_date, '%Y-%m-%d')"), '=', $fetchDate->format('Y-m-d'))
                    ->delete();
                foreach ($result as $index => $item) {
                    $dataToInsert = [
                        'productOwner' => $item->productOwner,
                        'ProductionUnit' => $item->ProductionUnit,
                        'ProductCode' => $item->ProductCode,
                        'ProductName' => $item->ProductName,
                        'UOMCodeDefault' => $item->UOMCodeDefault,
                        'ProductCategory' => $item->ProductCategory,
                        'MonthlyForecastQuantity' => $item->MonthlyForecastQuantity,
                        'MORequest' => $item->MORequest,
                        'MODelivery' => $item->MODelivery,
                        'MOPendingQuantity' => $item->MOPendingQuantity,
                        'WIPBalanceQty' => $item->WIPBalanceQty,
                        'QuarantinedBalanceQuantity' => $item->QuarantinedBalanceQuantity,
                        'QuarantinedHoldBalanceQuantity' => $item->QuarantinedHoldBalanceQuantity,
                        'QuarantinedLastLotNo' => $item->QuarantinedLastLotNo,
                        'ReleasedBalanceQuantity' => $item->ReleasedBalanceQuantity,
                        'ReleasedBalanceHoldQuantity' => $item->ReleasedBalanceHoldQuantity,
                        'ReleasedBalanceAndHoldQuantity' => $item->ReleasedBalanceAndHoldQuantity,
                        'ReleasedLastLotNo' => $item->ReleasedLastLotNo,
                        'TotalStockQuantity' => $item->TotalStockQuantity,
                        'LevelTotalValuemonths' => $item->LevelTotalValuemonths,
                        'ReadyStockQuantity' => $item->ReadyStockQuantity,
                        'LevelReadyValuemonths' => $item->LevelReadyValuemonths,
                        'PlantGroup' => $item->PlantGroup,
                        'exeuid' => $item->exeuid,
                        'exetime' => date('Y-m-d H:i:s', strtotime($item->exetime)),
                        'fetch_date' => $fetchDate->format('Y-m-d H:i:s'),
                    ];
                    $indexes[] = $index + 1;
                    $dataToInserts[] = $dataToInsert;
                }
                $chunks = array_chunk($dataToInserts, $batchSize);
                foreach ($chunks as $chunk) {
                    PivotMrpSLA::insert($chunk);
                }
                $responseData = [];
                foreach ($dataToInserts as $key => $data) {
                    $responseData[] = array_merge($data, ['sla_index' => $indexes[$key]]);
                }
                return response()->json([
                    'code' => 200,
                    'message' => 'Data Available Insert and Updated successfully',
                    'data' => $responseData
                ], 200);

                return response()->json([
                    'code' => 404,
                    'message' => 'Data Not Available',
                    'data' => null,
                ], 404);
            } else {
                return response()->json([
                    'code' => 404,
                    'message' => 'Data Not Available',
                    'data' => null,
                ], 404);
            }
        } catch (\Exception $e) {
            return response()->json([
                'code' => 500,
                'message' => 'Error fetching or inserting/updating data',
                'error' => $e->getMessage(),
            ], 500);
        }
    }
}
