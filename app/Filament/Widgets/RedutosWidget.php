<?php

namespace App\Filament\Widgets;

use App\Models\Reduto;
use Filament\Widgets\StatsOverviewWidget as BaseWidget;
use Filament\Widgets\StatsOverviewWidget\Stat;

class RedutosWidget extends BaseWidget
{
    protected static ?int $sort = 1;
    protected function getStats(): array
    {
        return [
            //Stat::make(label: 'Total de redutos', value: Reduto::count())
        ];
    }
}
