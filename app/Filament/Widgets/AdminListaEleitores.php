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

    protected static ?string $heading = 'Listagem geral de bases';


    public function table(Table $table): Table

    {
        return $table
            ->query(EleitoresResource::getEloquentQuery())

            ->defaultPaginationPageOption(20)

            ->defaultSort('created_at', 'desc')

            ->columns([
                TextColumn::make('id'),
                TextColumn::make('nome')
                ->sortable(['nome'])
                ->searchable(),
                TextColumn::make('Flideranca.nome')->label('Coordenador')
                ->searchable(),
                TextColumn::make('telefone')->label('Telefone'),
                TextColumn::make('email')->label('E-mail')->icon('heroicon-m-envelope')
            ])
            ->defaultSort('nome', 'asc')
            ->defaultPaginationPageOption(25)
            ->bulkActions([
                ExportBulkAction::make()
            ]);
    }

    public static function canView(): bool
    {
        return auth()->user()->hasRole('Admin');
    }
}
