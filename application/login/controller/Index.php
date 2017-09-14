<?php
namespace app\login\controller;
use think\Controller;
use app\login\model\User;
use think\Session;
class Index extends Controller
{
    public function index()
    {
      return $this->fetch();
    }
	public function check()
	{
		$username=input('post.username');
		$password=input('post.password');
		$captcha=input('post.captcha');
         
           
       if(!captcha_check($captcha, '', config('captcha'))){
                    //验证失败
         return json(['status'=>0,'message'=>'验证码错误']);
		}
                
		if(!trim($username)) {
            return json(['status'=>0,'message'=>'用户名错误']);
        }//验证用户名
        if(!trim($password)) {
           return json(['status'=>0,'message'=>'密码错误']);
        }//验证密码
		$user=User::get(['username' =>$username, 'pass'=>$password]);
         if($user){ 
	             Session::set('user_name',$user);//保存用户名和密码
				return json(['status'=>1,'message'=>'登陆成功']);
	}
		else
			 {  
			return json(['status'=>0,'message'=>'登陆失败']);}
			}
	public function loginout()//退出
	{
			  Session::set('user_name',null);
			 return json(['status'=>1,'message'=>'登陆成功']);
	}

		}
	


