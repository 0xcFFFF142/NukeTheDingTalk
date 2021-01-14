@echo off
for /f "tokens=1 delims=&" %%a in ("%uuida%") do set uuid=%%a
echo %uuid% >core\getinfo\tmp.txt
exit