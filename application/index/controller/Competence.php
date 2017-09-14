<?php
namespace app\index\controller;
use app\index\model\Shoptype;
use app\index\model\User;
use think\Controller;
class Competence extends Common
{
	public function index()
	{
		$user=User::where('status',1)->column('id','username');
		$this->assign('user',$user);
		return $this->fetch();
	}

 }