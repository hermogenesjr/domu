<?php

namespace App\Filament\Resources\RedutoResource\Pages;

use App\Filament\Resources\RedutoResource;
use Filament\Actions;
use Filament\Resources\Pages\EditRecord;

class EditReduto extends EditRecord
{
    protected static string $resource = RedutoResource::class;

    protected function getHeaderActions(): array
    {
        return [
            Actions\DeleteAction::make(),
        ];
    }
}
