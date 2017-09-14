<?php
namespace app\index\controller;

use think\Controller;
class Home extends Common
{
	public function index()//产品首页
	{
		
		return $this->fetch();
	}
	
 }