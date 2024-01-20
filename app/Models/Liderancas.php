<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\DB;
use Illuminate\Database\Eloquent\belongsTo;

class Liderancas extends Model
{
    use HasFactory;

    protected $fillable = [
        'id',
        'nome',
        'endereco',
        'cep',
        'bairro',
        'telefone',
        'telefone2',
        'email',
        'id_reduto',
    ];

    public static function boot()
    {
        parent::boot();

        self::created(function($model){
            $user = User::create([
                'name' => $model->nome,
                'email' => $model->email,
                'password' => Hash::make('senha aqui'),
                'id_lideranca' => $model->id
            ]);

            DB::table('model_has_roles')->insert(['role_id' => 2, 'model_type' => "App\Models\User", 'model_id' => $user->id]);

        });


    }

    public function Freduto()
    {
        return $this->belongsTo(Reduto::class, 'id_reduto');
    }
}
