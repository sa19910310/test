<?php
namespace app\index\controller;
use app\index\model\Shoptype;
use think\Controller;
class Advertising extends Common
{
	public function index()//产品首页
	{
		
		return $this->fetch();
	}
	
 }