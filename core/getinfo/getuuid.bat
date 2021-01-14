	set /p uuida=           输入uuid:

	start /min /wait core\getinfo\uuid.bat

	(for /l %%a in (1 1 1) do set /p uuid=)<core\getinfo\tmp.txt

	del /s /q core\tmp.txt >nul

	set re=0

	:intercept_left

	if "%uuid:~0,1%"==" " set "uuid=%uuid:~1%" & goto intercept_left

	:intercept_right

	if "%uuid:~-1%"==" " set "uuid=%uuid:~0,-1%" & goto intercept_right

	set uuid