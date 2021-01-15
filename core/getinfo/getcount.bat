echo 启用永别模式(永不停息)请输入a.  
 set /p count=你想执行多少次:
 set c2=%count%
if /i %count% == a set count=lifetime && set c2=a
	echo 执行命令行 curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	title 准备刷赞---请求数:%count%  请求量:%countall%  UUID:%uuid%