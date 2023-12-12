<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class PcPurchaseReqs extends Model
{
    use HasFactory;
    protected $connection = 'mysql_bis_bdg';
    protected $table = 'pc_purchase_request';
    protected $primaryKey = 'No_PR';
    // public $timestamps = false;
    public $incrementing = false;

    protected $fillable = [
        'No_PR',
        'Tgl_PR',
        'Kode_Principal',
        'Kode_Divisi_Produk',
        'Tgl_Dibutuhkan',
        'Kode_Cabang_Tujuan',
        'Alamat_Kirim',
        'Status',
        'User_ID',
        'Time_Stamp',
        'Pengali',
    ];

    public function purchaseReqDetails()
    {
        return $this->hasMany(PcPurchaseReqsDetail::class, 'No_PR', 'No_PR');
    }
}
