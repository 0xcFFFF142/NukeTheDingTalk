::[Bat To Exe Converter]
::
::fBE1pAF6MU+EWHzeyHU1KidnWBGGJVeWD6MZ1LqrvbrX8xxPaMwqc4rv0rGqKe4U3kTofqosxnMUndMJbA==
::fBE1pAF6MU+EWHzeyHU1KidnWBGGJVeWD6MZ1LqrvbrX8xxPaMwqc4rv0rGqKe4U3kTofqouw2hW1s4UCXs=
::YAwzoRdxOk+EWAjk
::fBw5plQjdCqDJG6B9n4DPA5QVTiuNX2/OudMurirvrvVnmMIX+cLcIr/07qJFOEf4XnKYJ0o6S4CiNMzWUkLKEv9UQo1undLtWuLecmZp0HoSUfp
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF65
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF65
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpSI=
::egkzugNsPRvcWATEpSI=
::dAsiuh18IRvcCxnZtBNQ
::cRYluBh/LU+EWAjk
::YxY4rhs+aU+IeA==
::cxY6rQJ7JhzQF1fEqQJieEkFAlTTcjrpSORLur2b
::ZQ05rAF9IBncCkqN+0xwdVsGHFbTcjvrSORPprmsvb/n
::ZQ05rAF9IAHYFVzEqQK52vLdvu0H1Lwy00uUDBJ9Eybn
::eg0/rx1wNQPfEVWB+kM9LVsJDI1w1eJI7zD0P2AuEWJjWMvhmII=
::fBEirQZwNQPfEVWB+kM9LVsJDI1w1eJI7zD0P2AuEWJjWMvhmII=
::cRolqwZ3JBvQF1fEqQK52vLdvu0H1Lwy00uUDBJ9Eybn
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATE100gMQldSwyWdGjzVOVOuair9+nX8h1NBbZtPrfOwr2bMelBuhe0FQ==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCqDJG6B9n4DPA5QVTiuNX2/OudMurirvrvVnmMIX+cLcIr/07qJFOEf4XnwcIU5mH9Cnas=
::YB416Ek+Zm8=
::
::
::978f952a14a936cc963da21a135fa983
@echo off
CHCP 936
chcp 936
chcp 65001
cls
title 钉钉刷赞脚本

echo.
echo.
echo =======================================
echo   钉钉刷赞脚本 
echo =======================================
echo     制作者名单
echo            Batch------^@0xc0000142
echo            Python-----^@Xuxiuqi2020
echo =======================================

	set /p uuid=           输入uuid:
	set countall=10000000
	set /p countall=     每次请求的数量(直接回车为10000000(1千万)):
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
	if /i '%fast%' == 'y' echo 为了保护您的计算机,快速模式下不支持永别模式.  && set /p count=你想执行多少次:
	if /i '%fast%' == 'n' set /p count=你想执行多少次 启用永别模式(永不停息)请输入a:

	if /i %count% == a set count=lifetime
	echo 执行命令行 curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	title 准备刷赞---请求数:%count%  请求量:%countall%  UUID:%uuid%

:r
		if /i '%fast%' == 'n' goto r1
	echo 已开启快速模式 该模式可能导致计算机卡顿
	echo 即将调用来自@Xuxiuqi2020的API
	api.exe "%uuid%" %countall% %count% 0
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
		
if /i '%fast%' == 'n' 		echo       a              启用永别模式 ^(永不停息^)

if /i '%fast%' == 'y' 		echo       a              为了保护您的计算机,快速模式下不支持永别模式

        echo       ^u              更正输入的uuid
        
		echo   任意非零正数       将请求数量与您的输入相加 然后重新开始刷赞
		
		echo.
		set /p re=        请输入您的选择:


		IF /i '%re%' == 'y' if /i '%fast%' == 'n' set /a count=%count%+%count%  && goto r
		IF /i '%re%' == 'y' if /i '%fast%' == 'y' goto r	
		IF /i '%re%' == 'a' if /i '%fast%' == 'n' set count=lifetime & goto r
		IF /i '%re%' == 'a' if /i '%fast%' == 'y' echo 为了保护您的计算机,快速模式下不支持永别模式.  && goto q
		if /i '%re%' == 'u' set /p uuid=        输入uuid: &&goto r
		if /i '%re%' == 'n' exit
		if /i %re% GEQ 0 set /a count=%count%+%re% && goto r
		goto q
