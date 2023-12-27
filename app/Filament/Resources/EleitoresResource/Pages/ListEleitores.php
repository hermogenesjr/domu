<?php

namespace App\Filament\Resources\EleitoresResource\Pages;

use App\Filament\Resources\EleitoresResource;
use Filament\Actions;
use Filament\Resources\Pages\ListRecords;

class ListEleitores extends ListRecords
{
    protected static string $resource = EleitoresResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\CreateAction::make(),
        ];
    }
}
