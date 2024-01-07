<?php

namespace App\Filament\Widgets;

use Filament\Widgets\ChartWidget;

class AdminCharts extends ChartWidget
{
    protected static ?int $sort = 2;
    protected static ?string $heading = 'Chart';

    protected function getData(): array
    {
        return [
            'datasets' => [
                [

                    'label' => 'Cadastro de eleitores por semana',

                    'data' => [0, 1, 2, 3, 4, 5, 6]
                ]
                ],
            'labels'  => ['Dom', 'Seg', 'Ter', 'Qua', 'Qui', 'Sex', 'Sab']
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }
    public static function canView(): bool
    {
        return auth()->user()->hasRole('Admin');
    }
}
