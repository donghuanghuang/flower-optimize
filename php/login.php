<?php
header("Content-Type:application/json");
require_once("init.php");
@$uname=$_REQUEST["uname"];
@$upwd=$_REQUEST["upwd"];
if($uname!==null&&$upwd!==null){
	$sql="select uid from fl_user where uname='$uname' and binary upwd='$upwd'";
	$result=mysqli_query($conn,$sql);
	$row=mysqli_fetch_row($result);
	if($row){
		session_start();
		$_SESSION["uid"]=$row[0];
		echo json_encode("true");
	}else{
		echo json_encode("false");
	}
}else{
	echo json_encode("false");
}