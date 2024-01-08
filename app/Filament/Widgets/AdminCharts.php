<?php

namespace App\Filament\Widgets;

use App\Models\Eleitores;
use Carbon\Carbon;
use Filament\Widgets\ChartWidget;
use Flowframe\Trend\Trend;
use Flowframe\Trend\TrendValue;

class AdminCharts extends ChartWidget
{

    protected static ?string $pollingInterval = '3600s';
    protected int | string | array $columnSpan = 'full';
    protected static ?string $maxHeight = '300px';
    protected static ?int $sort = 2;
    protected static ?string $heading = 'Chart';

    protected function getData(): array
    {

        $data = Trend::model(Eleitores::class)
            ->between(
                start: now()->startOfYear(),
                end: now()->endOfYear(),
            )
            ->perMonth()
            ->count();

        return [
            'datasets' => [
                [
                    'label' => 'Quantidade por mês',
                    'data' => $data->map(fn (TrendValue $value) => $value->aggregate),
                ],
            ],
            'labels' => $data->map(fn (TrendValue $value) => $value->date),
        ];
    }

    protected function getType(): string
    {
        return 'line';
    }

    private function getEleitoresPorMes(): array
    {
        $now = Carbon::now();

        $eleitoresPorMes = [];

        $meses = collect(range(1, 12))->map(function($mes) use ($now, $eleitoresPorMes){

            $count = Eleitores::whereMonth('created_at', Carbon::parse($now->month($mes)->format('Y-m')))->count();

            $eleitoresPorMes[] = $count;


            return $now->month($mes)->format('M');

        })->toArray();

        return [
            'eleitoresPorMes' => $eleitoresPorMes,

            'meses' => $meses
        ];

    }

    public static function canView(): bool
    {
        return auth()->user()->hasRole('Admin');
    }
}
