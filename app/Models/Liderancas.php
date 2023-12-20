<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

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
    ];
}
