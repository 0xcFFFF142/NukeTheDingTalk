::	if /i %ta% == 0 
	call core\title.bat api
::	echo api-cpp.exe %uuid% %countall% %c2% %ta% 
	echo 即将调用来自@Xuxiuqi2020的API(C++版本) && api-cpp.exe %uuid% %countall% %c2% %ta% && goto cppend
::	echo 即将调用来自@Xuxiuqi2020的API(Python版本)
::	api-py.exe "%uuid%" %countall% %count% %ta%
	:cppend
	set start=%count% 
			set start=1
	call core\title.bat end
call core\dingtalk\dingtalkend.bat