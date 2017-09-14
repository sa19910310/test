<?php
function getsub($pid){
	
		$cmod=model("caidan")->where("pid=$pid")->select();
	    return $cmod;
	}
function SelectSon($Pid)
{
	$m=model('Shoptype');
	if($info=$m->where("Pid='$Pid'")->select())
	{
		$data=array();
		for($i=0;$i<count($info);$i++)
		{	$da=array();
			$da['name']=$info[$i]['name'];
			$da['children']=SelectSon($info[$i]['id']);
			array_push($data,$da);
		};
		return $data;//一次性返回节点数组
		}
		else
	{
			return null;
	}

}

