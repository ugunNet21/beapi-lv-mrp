<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        // Schema::create('bpb', function (Blueprint $table) {
        //     $table->id();
        //     $table->timestamps();
        // });

        // Schema::connection('mysql2')->create('BPB', function ($table) {
        //     $table->increments('id');
        // });

        // Schema::connection('mysql2')->create('BPB', function (Blueprint $table) {
        //     $table->increments('ISS_NO');
        //     $table->date('ISS_DATE');
        //     $table->string('ISS_STATUS');
        //     $table->string('DO_NO');
        //     $table->string('MO_NO');
        //     $table->string('MO_TYPE');
        //     $table->string('PO_NO');
        //     $table->string('PRODUCT_CODE');
        //     $table->string('PRODUCT_DESC');
        //     $table->string('prod_unit');
        //     $table->string('prod_group');
        //     $table->string('LOT_NUMBER');
        //     $table->decimal('iss_qty', 10, 2);
        //     $table->date('expired_date');
        //     $table->string('LOCATION_NO');
        //     $table->string('CUSTOMER_CODE');
        //     $table->string('CUST_NAME');
        //     $table->date('exp_date');
        //     $table->date('actual_date');
        //     $table->date('loading_date');
        //     $table->date('execdate');
        //     $table->string('exp_no');
        //     $table->string('exp_status');
        //     $table->string('forwarder');
        //     $table->string('resi_number');
        //     $table->integer('jumlah');
        //     $table->decimal('total_vol', 10, 2);
        //     $table->decimal('total_weight', 10, 2);
        //     $table->timestamps();
        // });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        // Schema::dropIfExists('bpb');
        Schema::connection('mysql2')->dropIfExists('BPB');
    }
};
