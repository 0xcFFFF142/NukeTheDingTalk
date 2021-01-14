@echo off
CHCP 936
chcp 936
chcp 65001
cls
title 钉钉刷赞脚本

echo.
echo.
echo ====================================================================
echo   NukeTheDingTalk
echo ====================================================================
echo     制作者名单
echo            Batch------^@0xc0000142
echo            Python-----^@Xuxiuqi2020
echo ====================================================================
echo     这是一个开源软件

echo       欢迎访问GitHub:https://github.com/0xcFFFF142/NukeTheDingTalk

echo       如果你喜欢这个脚本 欢迎到GitHub给个star~
echo ====================================================================
	set /p uuida=           输入uuid:
	:uuid
	start /min /wait core\uuid.bat
	(for /l %%a in (1 1 1) do set /p uuid=)<core\tmp.txt
	del /s /q core\tmp.txt >nul
	if /i %re% == u goto r 
	
:intercept_left
if "%uuid:~0,1%"==" " set "uuid=%uuid:~1%"&goto intercept_left

:intercept_right
if "%uuid:~-1%"==" " set "uuid=%uuid:~0,-1%"&goto intercept_right
	set uuid
	echo.
	set countall=10000000
	set /p countall=     每次请求的数量(直接回车为10000000(1千万)):
	echo 每次请求的数量=%countall%
	echo.
	:i0
	if /i %countall% GTR 10000000 GOTO i1
	goto i2
	:i1
		echo 超过一千万的数字无效,请重新输入一个小于10000000的数字.
		echo 按下回车自动设置为10000000(1千万)
		set countall=10000000
		set /p countall=每次请求的数量:
		goto i0 
	:i2	
	set /p fast=是否开启快速模式(该模式可能会引起计算机卡顿)(y/n):
	

	if /i %fast% == y echo 为了保护您的计算机,快速模式下不支持永别模式.  && set /p count=你想执行多少次:
	
	if /i %fast% == n set /p count=你想执行多少次 启用永别模式(永不停息)请输入a:

	if /i %count% == a set count=lifetime
	echo 执行命令行 curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	title 准备刷赞---请求数:%count%  请求量:%countall%  UUID:%uuid%

:r
		if /i %fast% == n goto r1
	echo 已开启快速模式 该模式可能导致计算机卡顿
	set %ta%=0
	
	echo 快速模式支持调整速率 您可以在此输入任意大于或等于0的数字以调整速率
	
	set /p ta=速率(秒),支持小数:
	
	echo 即将调用来自@Xuxiuqi2020的API
	
	api.exe "%uuid%" %countall% %count% %ta%
	
	set start=%count% && goto q1
:r1
		set start=1
curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	echo  ...
	set /a start=%start% + 1
echo ============================
	ECHO 正在刷赞---请求数:%start%/%count%  请求量:%countall%*%start%=%all%  UUID:%uuid% %ano%
	set /a all=%countall%*%start%
	title 正在刷赞---请求数:%start%/%count%  请求量:%countall%*%start%=%all%  UUID:%uuid%
echo ============================
	if /i %count% == lifetime goto r
	if /i %start% == %count% goto q
	if /i %start% LSS %count% goto r
:q1
echo 正在等待余下进程退出....
title 刷赞结束---请求数:%start%/%count%  请求量:%countall%*%start%=%all%  UUID:%uuid%
timeout 2
:q
set re=0
echo off
echo.
echo.
		echo      输入            程序行为
		
		echo       y              重新按照您的选择刷赞
		
		echo       n              退出
		
if /i %fast% == n 		echo       a              启用永别模式 ^(永不停息^)

if /i %fast% == y 		echo       a              为了保护您的计算机,快速模式下不支持永别模式

        echo       ^u              更正输入的uuid
        
		echo   任意非零正数       将请求数量与您的输入相加 然后重新开始刷赞
		
		echo.
		set /p re=        请输入您的选择:


		IF /i %re% == y if /i %fast%' == n set /a count=%count%+%count%  && goto r
		IF /i %re% == y if /i %fast%' == y goto r	
		IF /i %re% == a if /i %fast%' == n set count=lifetime & goto r
		IF /i %re% == a if /i %fast%' == y echo 为了保护您的计算机,快速模式下不支持永别模式.  && goto q
		if /i %re% == u set /p uuid=        输入uuid: &&goto uuid
		if /i %re% == n exit
		if /i %re% GEQ 0 set /a count=%count%+%re% && goto r
		goto q
