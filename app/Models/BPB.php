<?php

namespace App\Models;

use App\Models\Internal\PivotMrpBpb;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class BPB extends Model
{
    use HasFactory;
    protected $connection = 'mysql_server';
    protected $table = 'BPB';
    protected $primaryKey = 'ISS_NO';
    protected $fillable = [
        'ISS_NO',
        'ISS_DATE',
        'ISS_STATUS',
        'DO_NO',
        'MO_NO',
        'MO_TYPE',
        'PO_NO',
        'PRODUCT_CODE',
        'PRODUCT_DESC',
        'prod_unit',
        'prod_group',
        'LOT_NUMBER',
        'iss_qty',
        'expired_date',
        'LOCATION_NO',
        'CUSTOMER_CODE',
        'CUST_NAME',
        'exp_date',
        'actual_date',
        'loading_date',
        'execdate',
        'exp_no',
        'exp_status',
        'forwarder',
        'resi_number',
        'jumlah',
        'total_vol',
        'total_weight',
    ];

    public function pivotMrpBpb()
    {
        return $this->hasOne(PivotMrpBpb::class);
    }
}
