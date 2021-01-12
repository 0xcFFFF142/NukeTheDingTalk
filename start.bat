@echo off
CHCP 65001
cls
title 钉钉刷赞脚本

	set /p uuid=输入uuid:
	set /p countall=每次请求的数量:
	if /i %countall% GTR 10000000 GOTO :i1
	goto i2
	:i1
		echo 超过一千万的数字无效,请重新输入一个小于10000000的数字.
		echo 按下回车自动设置为10000000(1千万)
		set countall=10000000
		set /p countall=每次请求的数量:
	:i2
	set /p count=你想执行多少次 永不停息请输入a:
	if /i %count% == a set count=lifetime
	echo 执行命令行 curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	title 准备刷赞---请求数:%count%  请求量:%countall%  UUID:%uuid%
	set start=1
	:r
	if exist fast set ano=已开启快速模式 该模式可能导致计算机卡顿
	echo 已开启快速模式 该模式可能导致计算机卡顿
	if exist fast start /min curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	if not exist fast curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	
echo  ...

set /a start=%start% + 1
echo ============================
ECHO 正在刷赞---请求数:%start%/%count%  请求量:%countall%*%start%=%all%  UUID:%uuid% %ano%
set /a all=%countall%*%start%
title 正在刷赞---请求数:%start%/%count%  请求量:%countall%*%start%=%all%  UUID:%uuid%
echo ============================
if /i %count% == a goto r
if /i %start% == %count% goto q
if /i %start% LSS %count% goto r
:q
timeout 5
set /p re=再来一次?(Y/N)
IF /i '%re%' == 'y' set start=1 && goto r
if /i '%re%' == 'n' exit