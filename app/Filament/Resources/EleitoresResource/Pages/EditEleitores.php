<?php

namespace App\Filament\Resources\EleitoresResource\Pages;

use App\Filament\Resources\EleitoresResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditEleitores extends EditRecord
{
    protected static string $resource = EleitoresResource::class;

    protected function getRedirectUrl(): string
    {
        return $this->getResource()::getUrl('index');
    }

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
