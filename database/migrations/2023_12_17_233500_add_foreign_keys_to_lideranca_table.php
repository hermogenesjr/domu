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
        Schema::table('lideranca', function (Blueprint $table) {
            $table->foreign(['id'], 'lideranca_fk')->references(['id'])->on('reduto')->onUpdate('CASCADE')->onDelete('RESTRICT');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('lideranca', function (Blueprint $table) {
            $table->dropForeign('lideranca_fk');
        });
    }
};