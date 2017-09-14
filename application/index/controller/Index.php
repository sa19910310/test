<?php
namespace app\index\controller;
use app\index\model\User;
use app\index\model\Menu;
use app\index\model\Caidan;
use think\Session;
use think\Controller;
class Index extends Common//系统首页
{
	public function index()
      
{  
		$user=parent::getLoginUser()['username'];
		$Menu=Menu::all();
        $caidan=model("Caidan")->where('pid','0')->select();
        $this->assign('cate',$caidan);
		$this->assign('menu_main',$Menu);
	    $this->assign('user',$user);
        return $this ->fetch();
	

}


}