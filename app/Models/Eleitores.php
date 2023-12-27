<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\belongsTo;

class Eleitores extends Model
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
        'id_lideranca',
        'data_nascimento',
        'rede_social',
        'profissao',
    ];


    public function Flideranca()
    {
        return $this->belongsTo(Liderancas::class, 'id_lideranca');
    }
}
