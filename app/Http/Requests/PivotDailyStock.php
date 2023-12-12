<?php

namespace App\Http\Requests;

use Illuminate\Foundation\Http\FormRequest;

class PivotDailyStock extends FormRequest
{
    /**
     * Determine if the user is authorized to make this request.
     *
     * @return bool
     */
    public function authorize()
    {
        return false;
    }

    /**
     * Get the validation rules that apply to the request.
     *
     * @return array<string, mixed>
     */
    public function rules()
    {
        return [
            'id_product' => 'required|numeric',
            'kode_cabang' => 'required|string',
            'nama_cabang' => 'required|string',
            'kode_barang_clipper' => 'required|string',
            'kode_barang_bis' => 'required|string',
            'kode_barang_principal',
            'group_barang',
            'subgroup_barang',
            'sub_prc',
            'category',
            'unb_brand',
            'type_barang',
            'nama_barang',
            'pcpl_kode_clipper',
            'kode_principal',
            'Kode_Divisi_Produk',
            'klasifikasi_jual',
            'tgl_discontinue_pembelian',
            'jenis_barang',
            'harga_jual_current',
            'harga_terkecil',
            'harga_terbesar',
            'qty1',
            'satuan1',
            'qty2',
            'satuan2',
            'qty3',
            'satuan3',
            'qty4',
            'satuan4',
            'avail_awal',
            'avail_rp_awal',
            'avail_q1_awal',
            'avail_q2_awal',
            'avail_q3_awal',
            'avail_q4_awal',
            'bs_awal',
            'bs_rp_awal',
            'bs_q1_awal',
            'bs_q2_awal',
            'bs_q3_awal',
            'bs_q4_awal',
            'dps_awal',
            'dps_rp_awal',
            'dps_q1_awal',
            'dps_q2_awal',
            'dps_q3_awal',
            'dps_q4_awal',
            'depo_awal',
            'depo_rp_awal',
            'depo_q1_awal',
            'depo_q2_awal',
            'depo_q3_awal',
            'depo_q4_awal',
            'bs_In',
            'bs_In_rp',
            'bs_In_q1',
            'bs_In_q2',
            'bs_In_q3',
            'bs_In_q4',
            'bs_out',
            'bs_Out_rp',
            'bs_Out_q1',
            'bs_Out_q2',
            'bs_Out_q3',
            'bs_Out_q4',
            'bs_adj',
            'bs_adj_rp',
            'bs_adj_q1',
            'bs_adj_q2',
            'bs_adj_q3',
            'bs_adj_q4',
            'dps_in',
            'dps_In_rp',
            'dps_In_q1',
            'dps_In_q2',
            'dps_In_q3',
            'dps_In_q4',
            'dps_Out',
            'dps_Out_rp',
            'dps_Out_q1',
            'dps_Out_q2',
            'dps_Out_q3',
            'dps_Out_q4',
            'dps_rtr',
            'dps_rtr_rp',
            'dps_rtr_q1',
            'dps_rtr_q2',
            'dps_rtr_q3',
            'dps_rtr_q4',
            'depo_In',
            'depo_In_rp',
            'depo_In_q1',
            'depo_In_q2',
            'depo_In_q3',
            'depo_In_q4',
            'depo_Out',
            'depo_Out_rp',
            'depo_Out_q1',
            'depo_Out_q2',
            'depo_Out_q3',
            'depo_Out_q4',
            'depo_rtr',
            'depo_rtr_rp',
            'depo_rtr_q1',
            'depo_rtr_q2',
            'depo_rtr_q3',
            'depo_rtr_q4',
            'beli',
            'rp_beli',
            'beli_q1',
            'beli_q2',
            'beli_q3',
            'beli_q4',
            'rtr_beli',
            'rp_rtr_beli',
            'rtr_beli_q1',
            'rtr_beli_q2',
            'rtr_beli_q3',
            'rtr_beli_q4',
            'jual',
            'rp_jual',
            'jual_q1',
            'jual_q2',
            'jual_q3',
            'jual_q4',
            'rtr_jual',
            'rp_rtr_jual',
            'rtr_jual_q1',
            'rtr_jual_q2',
            'rtr_jual_q3',
            'rtr_jual_q4',
            'mac_masuk',
            'rp_mac_masuk',
            'macIn_q1',
            'macIn_q2',
            'macIn_q3',
            'macIn_q4',
            'mac_keluar',
            'rp_mac_keluar',
            'macOut_q1',
            'macOut_q2',
            'macOut_q3',
            'macOut_q4',
            'adjust',
            'rp_adjust',
            'adj_q1',
            'adj_q2',
            'adj_q3',
            'adj_q4',
            'avail_akhir',
            'avail_rp_akhir',
            'avail_q1_akhir',
            'avail_q2_akhir',
            'avail_q3_akhir',
            'avail_q4_akhir',
            'bs_akhir',
            'bs_rp_akhir',
            'bs_q1_akhir',
            'bs_q2_akhir',
            'bs_q3_akhir',
            'bs_q4_akhir',
            'dps_akhir',
            'dps_rp_akhir',
            'dps_q1_akhir',
            'dps_q2_akhir',
            'dps_q3_akhir',
            'dps_q4_akhir',
            'depo_akhir',
            'depo_rp_akhir',
            'depo_q1_akhir',
            'depo_q2_akhir',
            'depo_q3_akhir',
            'depo_q4_akhir',
            'ag_akhir',
            'ag_rp_akhir',
            'ag_q1_akhir',
            'ag_q2_akhir',
            'ag_q3_akhir',
            'ag_q4_akhir',
            'no_batch',
            'tgl_expired',
            'bs_akhir_reject',
            'bs_rp_akhir_reject',
            'bs_q1_akhir_reject',
            'bs_q2_akhir_reject',
            'bs_q3_akhir_reject',
            'bs_q4_akhir_reject',
            'bs_akhir_defect',
            'bs_rp_akhir_defect',
            'bs_q1_akhir_defect',
            'bs_q2_akhir_defect',
            'bs_q3_akhir_defect',
            'bs_q4_akhir_defect',
            'bs_akhir_pending',
            'bs_rp_akhir_pending',
            'bs_q1_akhir_pending',
            'bs_q2_akhir_pending',
            'bs_q3_akhir_pending',
            'bs_q4_akhir_pending',
            'bs_akhir_hold',
            'bs_rp_akhir_hold',
            'bs_q1_akhir_hold',
            'bs_q2_akhir_hold',
            'bs_q3_akhir_hold',
            'bs_q4_akhir_hold',
            'keluar_tender',
            'keluar_tender_rp',
            'keluar_tender_q1',
            'keluar_tender_q2',
            'keluar_tender_q3',
            'keluar_tender_q4',
            'keluar_hc',
            'keluar_hc_rp',
            'keluar_hc_q1',
            'keluar_hc_q2',
            'keluar_hc_q3',
            'keluar_hc_q4',
            'bs_current_reject',
            'bs_current_defect',
            'bs_current_pending',
            'bs_current_hold',
            'tgl_stock',
            'sslx',
            'rev_ssl',
            'sslx_kecil',
            'rev_ssl_kecil',
        ];
    }
}
