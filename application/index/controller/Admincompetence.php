<?php
namespace app\index\controller;
use app\index\model\Shoptype;
use app\index\model\User;
use app\index\model\Caidan;
use app\index\model\Role;
use think\Controller;
class Admincompetence extends Common
{
	public function index()//产品首页
	{	$role=Role::where('status',1)->select();
		$this->assign('role',$role);
		return $this->fetch();
	}
	public function competence()
	{	
		$abc=User::where('status',1)->column('id,username','checked');
		$caidan=model("Caidan")->where('pid','0')->select();
		$this->assign('user',$abc);
		$this->assign('cate',$caidan);
		return $this->fetch();
	}
	public function xiugai()
	{
		$auth=input('post.auth');
		$authname=input('post.authname');
		$description=input('post.description');
		$id=input('post.user');
		$role=new Role;
		$role->status='1';
		$role->name=$authname;
		$role->menu_auth=$auth;
		$role->description=$description;
		$m=$role->save();
		if($m)
		{
         $ip=$role->id;
		 $user=new User;
		 $n=$user->where('id','in',$id)->update(['auto'=>$ip]);
		 if($n)
			{
				return json(['status'=>1,'message'=>'更新成功']);
			}
		
	}	
 }
	public function shanchu()
	{
		$id=input('post.id');
		$status=0;
		$shopgoods=new Role();
		$status=$shopgoods->where('id',$id)->update(['status'=>$status]);
		if($status)
		{
			return json(['status'=>1]);
		}

	}
	public function pishanchu()//批量删除
		{
			$id=input('post.id/a');
			$status=0;
			$role=new role();
			foreach($id as $k)
				{
					$times=$role->where('id',$k)->update(['status'=>$status]);
					if(!$times)
					{
						return json(['status'=>0,'message'=>'更新失败']);
					}
				
		
		}
			return json(['status'=>1,'message'=>'删除成功']);
 }
}
