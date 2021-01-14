	set /p fast=是否开启快速模式(该模式可能会引起计算机卡顿)(y/n):
	if /i %fast% == n goto end
	set ta=0
	echo 快速模式支持调整速率 您可以在此输入任意大于或等于0的数字以调整速率(使用Python版本API)
	echo C++版本不支持速率调整
	echo 当速率被设置为0(默认)时,将使用C++版本的API
	echo 当您每次启动快速模式时,都需要输入一次..
	set /p ta=速率(秒),支持小数:
	:end