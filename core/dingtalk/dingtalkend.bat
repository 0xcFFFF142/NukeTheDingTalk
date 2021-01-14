echo 正在等待余下进程退出....
title 刷赞结束---请求数:%start%/%count%  请求量:%countall%*%start%=%all%  UUID:%uuid%
timeout 2

echo off
:1
echo.
echo.
						echo      输入            程序行为

						echo       y              重新按照您的选择刷赞

						echo       n              退出

if /i %fast% == n 		echo       a              启用永别模式 ^(永不停息^)

if /i %fast% == y 		echo       a              为了保护您的计算机,快速模式下不支持永别模式

						echo       ^u              更正输入的uuid

						echo       f              更正快速模式开启状态

						echo       c              更改每次请求的数量

						echo   任意非零正数       将请求数量与您的输入相加 然后重新开始刷赞
						echo.

		set /p re=        请输入您的选择:

						if /i '%re%' == 'y' 	if /i '%fast%' == 'y' call core\dingtalk\run.bat

						if /i '%re%' == 'y' 	if /i '%fast%' == 'n' set /a count=%count%+%count% && call core\dingtalk\run.bat

						if /i '%re%' == 'n' set exit=y && call core\getinfo.bat

						if /i '%re%' == 'a' 	if /i '%fast%' == 'y' echo 为了保护您的计算机,快速模式下不支持永别模式 && goto 1

						if /i '%re%' == 'a' 	if /i '%fast%' == 'n' set count=lifetime && call core\dingtalk\run.bat

						if /i '%re%' == 'u' 	(

							set dogetuuid=y

							set dogetcountall=n

							set dogetcount=n

							set dogetfastmode=n

							set exit=n

						) && call core\getinfo.bat

						if /i '%re%' == 'f' 	(

							set dogetuuid=n

							set dogetcountall=n

							set dogetcount=n

							set dogetfastmode=y

							set exit=n

						) && call core\getinfo.bat

						if /i '%re%' == 'c' 	(

							set dogetuuid=n

							set dogetcountall=y
						
							set dogetcount=n

							set dogetfastmode=n

							set exit=n

						) && call core\getinfo.bat

						if /i %re% GEQ 0 set /a count=%count%+%re% && call core\dingtalk\run.bat

