:i2
	echo.
	set countall=10000000
		set /p countall=     每次请求的数量(直接回车为10000000(1千万)):
	echo 每次请求的数量=%countall%
	echo.
			if /i %countall% LEQ 10000000   goto end
			goto i2
			echo 超过一千万的数字无效,请重新输入一个小于10000000的数字.
			echo 按下回车自动设置为10000000(1千万)
			set countall=10000000
			set /p countall=每次请求的数量:

:end

