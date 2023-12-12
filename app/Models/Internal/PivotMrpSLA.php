<?php

namespace App\Models\Internal;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PivotMrpSLA extends Model
{
    use HasFactory;
    protected $connection = 'mysql_local';
    protected $table = 'pivot_mrp_sla';
    public $timestamps = false;
    protected $fillable = [
        'productOwner',
        'ProductionUnit',
        'ProductCode',
        'ProductName',
        'UOMCodeDefault',
        'ProductCategory',
        'MonthlyForecastQuantity',
        'MORequest',
        'MODelivery',
        'MOPendingQuantity',
        'WIPBalanceQty',
        'QuarantinedBalanceQuantity',
        'QuarantinedHoldBalanceQuantity',
        'QuarantinedLastLotNo',
        'ReleasedBalanceQuantity',
        'ReleasedBalanceHoldQuantity',
        'ReleasedBalanceAndHoldQuantity',
        'ReleasedLastLotNo',
        'TotalStockQuantity',
        'LevelTotalValuemonths',
        'ReadyStockQuantity',
        'LevelReadyValuemonths',
        'PlantGroup',
        'exeuid',
        'exetime',
        'fetch_date',
    ];
    public static function deleteByProductCode($productCode)
    {
        self::where('ProductCode', $productCode)->delete();
    }
}
