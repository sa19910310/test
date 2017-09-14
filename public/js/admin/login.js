/**
 * 前端登录业务类
 * @author singwa
 */
var login = {
    check : function() {
        // 获取登录页面中的用户名 和 密码
	
        var username = $('input[name="username"]').val();
        var password = $('input[name="password"]').val();
		var captcha=$('input[name="captcha"]').val();
         if(!username) {
            dialog.error('用户名不能为空');
        }
        if(!password) {
            dialog.error('密码不能为空');
        }
		if(!captcha)
		{
			dialog.error('验证码不能为空');
		}
        var url = "/login/index/check";
        var data = {'username':username,'password':password,'captcha':captcha};
        // 执行异步请求  $.post
        $.post(url,data,function(result){
            if(result.status == 0) {
                return dialog.error(result.message);
            }
            if(result.status == 1) {
                return dialog.success(result.message,"/index/index/index");
            }

        },'JSON');

    }
}