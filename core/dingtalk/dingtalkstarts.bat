:s
curl -G https://lv.dingtalk.com/interaction/createLike?uuid=%uuid%^&count=%countall%
	echo  ...
	set /a start=%start% + 1
echo ============================
	set /a all=%countall%*%start%
	ECHO 正在刷赞---请求数:%start%/%count%  请求量:%countall%*%start%=%all%  UUID:%uuid% %ano%
	call core\title.bat
echo ============================
	if /i %count% == lifetime goto s
	if /i %start% == %count% goto end
	if /i %start% LSS %count% goto s
:end
call core\title.bat end
call core\dingtalk\dingtalkend.bat