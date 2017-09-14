<?php
namespace app\index\controller;
use app\index\model\Shopgoods;
use app\index\model\Shoptype;
use think\Controller;
class Pictureadd extends Common
{
	public function index()//产品首页
	{
		$shoptype=SelectSon(0);
		$data=json_encode($shoptype);
		$this->assign('shoptype',$data);
		return $this->fetch();
	}
	
 }