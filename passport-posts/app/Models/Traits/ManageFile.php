<?php

namespace App\Models\Traits;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\Storage;

trait ManageFile
{
    public static function bootManageFile(): void
    {
        static::saving(function (Model $model) {
            $model->deleteLatestImage();
            $model->saveImage();
        });

        static::deleting(function(Model $model) {
            if (! blank($model->{$model->imageAttribute()})) {
                $model->deleteLatestImage();
            }
        });
    }

    public function imageAttribute(): string
    {
        return 'image';
    }

    public function deleteLatestImage(): void
    {
        if(blank($this->getOriginalImage())) return;

        $path = $this->getFullImagePath();

        if (Storage::disk($this->getImageDisk())->exists($path)) {
            Storage::disk($this->getImageDisk())->delete($path);
        }
    }

    public function getOriginalImage()
    {
        return $this->getRawOriginal($this->imageAttribute());
    }

    public function getFullImagePath(): string
    {
        $fileName = $this->getOriginalImage();

        return $this->getImagePath() . '/' . $fileName;
    }

    public function hasImage(): bool
    {
        return ! blank($this->getRawOriginal($this->imageAttribute()));
    }

    public function saveImage(): void
    {
        /** @var \Illuminate\Http\UploadedFile $image */
        $image = $this->{$this->imageAttribute()};
        Storage::disk($this->getImageDisk())->put($this->getImagePath(), $image);
        $this->setAttribute($this->imageAttribute(), $image->hashName());
    }

    public function getImageDisk(): string
    {
        return 'public';
    }

    public function getImageUrl(): string
    {
        return Storage::disk($this->getImageDisk())->url($this->getFullImagePath());
    }

    public function getImagePath(): string
    {
        return 'images';
    }
}
