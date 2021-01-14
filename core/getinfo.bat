if /i %exit% == y exit
:getuuid
if /i %dogetuuid% == n goto getuuidend
call core\getinfo\getuuid.bat
:getuuidend
:getcountall
if /i %dogetcountall% == n goto getcountallend
call core\getinfo\getcountall.bat
:getcountallend
:getfastmode
if /i %dogetfastmode% == n goto dogetfastmodeend
call core\getinfo\getfastmode.bat
:dogetfastmodeend
:getgetcount
if /i %dogetcount% == n goto dogetcountend
call core\getinfo\getcount.bat
:dogetcountend
