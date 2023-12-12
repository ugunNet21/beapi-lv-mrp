<?php

namespace App\Models\Internal;

use App\Models\BPB;
use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PivotMrpBpb extends Model
{
    use HasFactory;
    protected $connection = 'mysql_local';
    protected $table = 'pivot_mrp_bpb';
    protected $primaryKey = 'ISS_NO';

    protected $fillable = [
        'ISS_NO',
        'ISS_DATE',
        'ISS_STATUS',
        'DO_NO',
        'MO_NO',
        'MO_TYPE',
        'po_no',
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
        'fetch_date',
    ];
    protected $dates = [
        'fetch_date'
    ];
    public static function boot()
    {
        parent::boot();

        static::creating(function ($model) {
            $model->timestamps = false;
        });
    }

    // public function pivotMrpBpb()
    // {
    //     return $this->belongsTo(PivotMrpBpb::class);
    // }
}
