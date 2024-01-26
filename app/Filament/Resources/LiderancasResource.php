<?php

namespace App\Filament\Resources;

use App\Models\Reduto;
use App\Models\User;

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
use Filament\Forms\Components\Section;
use Rawilk\FilamentPasswordInput\Password;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use Illuminate\Http\Request;
use LaravelLegends\PtBrValidator\Rules\FormatoCep;
use Filament\Support\RawJs;
use Filament\Forms\Components\TextInput\Pattern;
use pxlrbt\FilamentExcel\Actions\Tables\ExportBulkAction;

class LiderancasResource extends Resource
{
    protected static ?string $model = Liderancas::class;

    protected static ?string $navigationIcon = 'heroicon-o-cube-transparent';
    protected static ?string $modelLabel = 'Coordenadores';


    public static function form(Form $form): Form
    {
        return $form
            ->schema([
                Section::make('Dados Gerais')->schema([
                    Select::make('id_reduto')
                    ->options(Reduto::all()->pluck('reduto','id'))
                    ->label('Reduto')
                    ->columnSpanFull(),
                    TextInput::make('nome')
                    ->label('Nome do Coordenador')
                    ->required(),
                    TextInput::make('endereco')->required(),
                    TextInput::make('cep')
                    ->required()
                    ->maxLength(9)
                    ->mask('99999-999')
                    ->placeholder('99999-999'),
                    TextInput::make('bairro')->required(),
                    TextInput::make('telefone')
                    ->mask('(99)99999-9999')
                    ->placeholder('(99)99999-9999')
                    ->required(),
                    TextInput::make('telefone2'),
                ])->columns(2),

                Section::make('Dados de Autenticação')->schema([
                    TextInput::make('email')
                    ->required()
                    ->email(),
                    Password::make('password')
                    //->required()
                    //->required( fn ($context): bool => $context =='create')
                    //->dehydrated(false)
                    ->required( fn ($context): bool => $context =='create')
                    ->label('Password')
                    //->dehydrateStateUsing(fn (string $state): string => Hash::make($state))
                    ->dehydrated(fn (?string $state): bool => filled($state)),
                ])
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
                    ExportBulkAction::make(),
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
