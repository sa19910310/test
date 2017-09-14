<?php
namespace app\index\controller;
use app\index\model\Shopgoods;
use app\index\model\Shoptype;
use think\Controller;
class Productlist extends Common
{
	public function index()//产品首页
	{
		$shopgoods=new Shopgoods;
		$shoptype=SelectSon(0);
		$data=json_encode($shoptype);
		$list=$shopgoods->where('status',1)->select();
		$this->assign('shoptype',$data);
		$this->assign('shopgoods',$list);
		return $this->fetch();
	}
	public function check()//修改状态
	{
		$id=input('post.id');
		$checked=input('post.checked');
		$shopgoods=new Shopgoods();
		$status=$shopgoods->where('id',$id)->update(['checked'=>$checked]);
		if($status)
		{
			return json(['status'=>1]);
	}

}
	public function shanchu()
		{
		$id=input('post.id');
		$status=0;
		$shopgoods=new Shopgoods();
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
			$shopgoods=new Shopgoods();
			foreach($id as $k)
				{
					$times=$shopgoods->where('id',$k)->update(['status'=>$status]);
				if($status)
		{
			return json(['status'=>1]);
		}	
				
		
		}
			
 }
}