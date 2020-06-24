<?php
namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class TrainingClass extends Model
{
	protected $table = 'training_class';
	protected $fillable = ['status','name','duration','audio_track','category_id','trainer_id','difficulty_level_id'];
}