<?php

namespace App\Filament\Widgets;

use App\Models\Eleitores;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class LiderancasStats extends BaseWidget
{
    protected static ?int $sort = 1;

    protected function getStats(): array
    {
        return [
            Stat::make(label: 'Total da base', value: Eleitores::where('id_lideranca', auth()->user()->id_lideranca)->count()),
        ];
    }
    public static function canView(): bool
    {
        return auth()->user()->hasRole('Manager');
    }
}
