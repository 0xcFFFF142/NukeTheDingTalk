::	if /i %ta% == 0 
	echo 即将调用来自@Xuxiuqi2020的API(C++版本) && api-cpp.exe "%uuid%" %countall% %count% %ta% && goto cppend
::	echo 即将调用来自@Xuxiuqi2020的API(Python版本)
::	api-py.exe "%uuid%" %countall% %count% %ta%
	:cppend
	set start=%count% 
			set start=1
			call core\title.bat
call core\dingtalk\dingtalkend.bat