<?php
namespace app\index\controller;
use app\index\model\Shoptype;
use think\Controller;
class Brand extends Common
{
	public function index()//品牌管理
	{
		
		return $this->fetch();
	}
	
 }