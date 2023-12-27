<?php

namespace App\Filament\Resources;

use App\Models\Reduto;

use App\Filament\Resources\LiderancasResource\Pages;
use App\Filament\Resources\LiderancasResource\RelationManagers;
use App\Models\Liderancas;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Resources\Resource;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\Select;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Http\Request;
use LaravelLegends\PtBrValidator\Rules\FormatoCep;
use Filament\Support\RawJs;
use Filament\Forms\Components\TextInput\Pattern;

class LiderancasResource extends Resource
{
    protected static ?string $model = Liderancas::class;

    protected static ?string $navigationIcon = 'heroicon-o-cube-transparent';
    protected static ?string $modelLabel = 'Lideranças';


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Select::make('id_reduto')
                ->options(Reduto::all()->pluck('reduto','id'))
                ->label('Reduto'),
                TextInput::make('nome')
                ->label('Nome da Liderança')
                ->required(),
                TextInput::make('endereco')->required(),
                TextInput::make('cep')
                ->required()
                ->maxLength(9)
                //->rule('formato_cep')
                ->mask('99999-999')
                ->placeholder('99999-999'),
                TextInput::make('bairro')->required(),
                TextInput::make('telefone')
                //->rule('celular_com_ddd')
                ->mask('(99) 99999-9999')
                ->placeholder('(99) 99999-9999')
                ->required(),
                TextInput::make('telefone2'),
                TextInput::make('email')
                ->required()
                ->email(),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id'),
                TextColumn::make('nome'),
                TextColumn::make('Freduto.reduto')->label('Reduto'),
                TextColumn::make('telefone')->label('Telefone'),
                TextColumn::make('email')->label('E-mail'),
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
            'index' => Pages\ListLiderancas::route('/'),
            'create' => Pages\CreateLiderancas::route('/create'),
            'edit' => Pages\EditLiderancas::route('/{record}/edit'),
        ];
    }
}
