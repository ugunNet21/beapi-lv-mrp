<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PcPurchaseReqsDetail extends Model
{
    use HasFactory;

    protected $connection = 'mysql_bis_bdg';
    protected $table = 'pc_purchase_request_detail';
    protected $primaryKey = ['No_PR', 'No_Detail'];
    // public $timestamps = false;
    public $incrementing = false;

    protected $fillable = [
        'No_PR',
        'No_Detail',
        'Kode_Barang',
        'Satuan',
        'SSL_PR',
        'Jumlah_Stok',
        'GOO',
        'Jumlah_Order',
        'Pembulatan',
        'Keterangan',
        'ID',
    ];

    public function purchaseRequest()
    {
        return $this->belongsTo(PcPurchaseReqs::class, 'No_PR', 'No_PR');
    }
}
