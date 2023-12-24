<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\belongsTo;

class Liderancas extends Model
{
    use HasFactory;

    protected $fillable = [
        'nome',
        'endereco',
        'cep',
        'bairro',
        'telefone',
        'telefone2',
        'email',
        'id_reduto',
    ];


    public function Freduto()
    {
        return $this->belongsTo(Reduto::class, 'id_reduto');
    }
}
