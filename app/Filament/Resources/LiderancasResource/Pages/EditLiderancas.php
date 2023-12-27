<?php

namespace App\Filament\Resources\LiderancasResource\Pages;

use App\Filament\Resources\LiderancasResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditLiderancas extends EditRecord
{
    protected static string $resource = LiderancasResource::class;

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
