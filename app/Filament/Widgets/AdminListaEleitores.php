<?php

namespace App\Filament\Widgets;

use App\Filament\Resources\EleitoresResource;
use Filament\Tables;
use Filament\Tables\Table;
use Filament\Widgets\TableWidget as BaseWidget;
use Filament\Tables\Columns\TextColumn;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

class AdminListaEleitores extends BaseWidget
{

    public static ?int $sort = 3;

    protected int | string | array $columnSpan = 'full';

    public function table(Table $table): Table
    {
        return $table

            ->query(EleitoresResource::getEloquentQuery())

            ->defaultPaginationPageOption(5)

            ->defaultSort('created_at', 'desc')

            ->columns([
                TextColumn::make('id'),
                TextColumn::make('nome')
                ->searchable(),
                TextColumn::make('Flideranca.nome')->label('Coordenador')
                ->searchable(isIndividual:true),
                TextColumn::make('telefone')->label('Telefone'),
                TextColumn::make('email')->label('E-mail')->icon('heroicon-m-envelope'),
            ])
            ->bulkActions([
                ExportBulkAction::make()
            ]);
    }

    public static function canView(): bool
    {
        return auth()->user()->hasRole('Admin');
    }
}
