<?php
namespace app\index\model;
use think\Model;
use app\index\model\Caidan as CaidanModel;
use think\Session;
class Role extends Model
{
	protected $table='__ROLE__';
	public  static function checkAuth()
	{	
		
		$role = session('user_name.auto');
		if (session('user_name.id') == '1' || $role == '1') 
		{
            return true;
        }

		
		$menu_auth  = self::where('id', $role)->value('menu_auth');
		$menu_auth  = json_decode($menu_auth, true);
        $menu_auth  = Caidan::where('id', 'in', $menu_auth)->column('url');
		$location = CaidanModel::getLocation();
		
		if( in_array($location, $menu_auth))
		{
			return true;
}

			return false;
	
	
}
}