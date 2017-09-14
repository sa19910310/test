<?php
namespace app\index\model;
use think\Model;
class User extends Model
{
	protected $table='__USER__';

	public function countauto($m)
	{
		return (self::where("auto='$m'")->count());
	}
}
