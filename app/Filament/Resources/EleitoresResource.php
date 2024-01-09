<?php

namespace App\Filament\Resources;

use App\Filament\Resources\EleitoresResource\Pages;
use App\Filament\Resources\EleitoresResource\RelationManagers;
use App\Models\Eleitores;
use Filament\Forms;
use Filament\Forms\Form;
use Filament\Forms\Components\TextInput;
use Filament\Tables\Columns\TextColumn;
use Filament\Forms\Components\Select;
use Filament\Resources\Resource;
use Filament\Tables;
use Filament\Tables\Table;
use Illuminate\Database\Eloquent\Builder;
use Illuminate\Database\Eloquent\SoftDeletingScope;
use App\Models\Liderancas;
use Filament\Forms\Components\DatePicker;
use Filament\Forms\Components\DateTimePicker;
use Filament\Forms\Components\TimePicker;
use Filament\Tables\Filters\Filter;
use Spatie\Permission\Models\Role;


class EleitoresResource extends Resource
{

    //protected static ?string $model = Eleitores::class;

    public static function getEloquentQuery(): Builder
    {
        if (auth()->user()->hasRole('Manager'))
        {
            return parent::getEloquentQuery()->where('id_lideranca', auth()->user()->id_lideranca);
        } else {
            return parent::getEloquentQuery();
        }
    }

    protected static ?string $model = Eleitores::class;

    protected static ?string $navigationIcon = 'heroicon-s-identification';
    protected static ?string $modelLabel = 'Lideranças';

    public static function form(Form $form): Form

    {
        return $form
            ->schema([
                Select::make('id_lideranca')
                ->options(Liderancas::all()->pluck('nome','id'))
                ->label('Liderança'),
                TextInput::make('nome')
                ->label('Nome da Liderança')
                ->required(),
                TextInput::make('endereco')->required(),
                TextInput::make('cep')
                //->required()
                ->maxLength(9)
                //->rule('formato_cep')
                ->mask('99999-999')
                ->placeholder('99999-999'),
                TextInput::make('bairro'),
                //->required(),
                TextInput::make('telefone')
                //->rule('celular_com_ddd')
                ->mask('(99)99999-9999')
                ->placeholder('(99)99999-9999'),
                //->required(),
                TextInput::make('telefone2')
                //->rule('celular_com_ddd')
                ->mask('(99)99999-9999')
                ->placeholder('(99)99999-9999'),
                //->required(),
                TextInput::make('email')
                //->required()
                ->email(),
                DatePicker::make('data_nascimento')
                ->format('d/m/Y'),
                TextInput::make('profissao'),
                TextInput::make('rede_social'),
            ]);
    }

    public static function table(Table $table): Table
    {
        return $table
            ->columns([
                TextColumn::make('id'),
                TextColumn::make('nome'),
                TextColumn::make('Flideranca.nome')->label('Coordenador'),
                TextColumn::make('telefone')->label('Telefone'),
                TextColumn::make('email')->label('E-mail'),
            ])
            ->filters([
                //Filter::make('eleitores', fn ($query) => $query->where('id', auth()->user()->id_lideranca)),
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
            'index' => Pages\ListEleitores::route('/'),
            'create' => Pages\CreateEleitores::route('/create'),
            'edit' => Pages\EditEleitores::route('/{record}/edit'),
        ];
    }
}
