<?php

namespace App\Filament\Resources\EleitoresResource\Pages;

use App\Filament\Resources\EleitoresResource;
use Filament\Actions;
use Filament\Resources\Pages\CreateRecord;

class CreateEleitores extends CreateRecord
{
    protected static string $resource = EleitoresResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }
}
