<?php

namespace App\Filament\Widgets;

use App\Models\Eleitores;
use App\Models\Liderancas;
use App\Models\Reduto;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class AdminStats extends BaseWidget
{
    protected static ?int $sort = 1;

    protected static bool $isLazy = false;

    protected function getStats(): array
    {
        return [
            Stat::make(label: 'Total de Redutos', value: Reduto::count()),
                //->description('Descrição')
                //->color('success')
                //->descriptionIcon('heroicon-m-arrow-trending-up'),
            Stat::make(label: 'Total de Coordenadores', value: Liderancas::count()),
            Stat::make(label: 'Total de Lideranças', value: Eleitores::count()),
            //dd(auth()->id())
        ];
    }
    public static function canView(): bool
    {
        return auth()->user()->hasRole('Admin');
    }
}
