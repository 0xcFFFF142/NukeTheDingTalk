	if /i %fast% == y echo 为了保护您的计算机,快速模式下不支持永别模式.  && set /p count=你想执行多少次:
	if /i %fast% == n set /p count=你想执行多少次 启用永别模式(永不停息)请输入a:
	if /i %count% == a set count=lifetime
	echo 执行命令行 curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	title 准备刷赞---请求数:%count%  请求量:%countall%  UUID:%uuid%