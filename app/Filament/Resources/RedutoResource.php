<?php

namespace App\Filament\Resources;

use App\Filament\Resources\RedutoResource\Pages;
use App\Filament\Resources\RedutoResource\RelationManagers;
use App\Models\Reduto;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;

class RedutoResource extends Resource
{
    protected static ?string $model = Reduto::class;

    protected static ?string $navigationIcon = 'heroicon-s-home-modern';
    protected static ?string $modelLabel = 'Redutos';

    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                TextInput::make('reduto')->required(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id'),
                TextColumn::make('reduto'),
            ])
            ->filters([
                //
            ])
            ->actions([
                Tables\Actions\EditAction::make(),
                Tables\Actions\DeleteAction::make(),
            ])
            ->bulkActions([
                Tables\Actions\BulkActionGroup::make([
                    Tables\Actions\DeleteBulkAction::make(),
                ]),
            ]);
    }

    public static function getRelations(): array
    {
        return [
            //
        ];
    }

    public static function getPages(): array
    {
        return [
            'index' => Pages\ListRedutos::route('/'),
            'create' => Pages\CreateReduto::route('/create'),
            'edit' => Pages\EditReduto::route('/{record}/edit'),
        ];
    }
}
