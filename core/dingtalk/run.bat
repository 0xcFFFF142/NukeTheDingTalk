::ECHO ON
if /i %fast% == y call core\dingtalk\dingtalkstartq.bat
if /i %fast% == n call core\dingtalk\dingtalkstarts.bat
