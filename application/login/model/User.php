<?php
namespace app\login\model;
use think\Model;
class User extends Model
{
	protected $table='__USER__';
	function updateData($pass,$username)
	{
		return Db::table($this->table)->where('username','=',$username)->update('pass','=',$pass);
	}
}
