<?php
namespace app\index\controller;
use app\index\model\Role;
use app\index\model\User;
use think\Controller;
class Administrator extends Common
{
	public function index()/*管理员首页*/
	{	$usera=new User;
		$user=$usera->where('status',1)->select();
		$this->assign('user',$user);
		return $this->fetch();
	}
	public function shanchu()//软删除用户
	{
		$id=input('post.id');
		$status=0;
		$shopgoods=new User();
		$status=$shopgoods->where('id',$id)->update(['status'=>$status]);
		if($status)
		{
			return json(['status'=>1]);
		}

 }
	public function check()//修改状态
	{
		$id=input('post.id');
		$checked=input('post.checked');
		$User=new User();
		$status=$User->where('id',$id)->update(['checked'=>$checked]);
		if($status)
		{
			return json(['status'=>1]);
	}

}
	public function pishanchu()//批量删除
		{
			$id=input('post.id/a');
			$status=0;
			$shopgoods=new User();
			foreach($id as $k)
				{
					$times=$shopgoods->where('id',$k)->update(['status'=>$status]);
					if(!$times)
					{
						return json(['status'=>0,'message'=>'更新失败']);
					}
				
		
		}
			return json(['status'=>1,'message'=>'删除成功']);
 }
}