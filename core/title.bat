set /a all=%countall%*%start%
if /i %1 == api set /a all=%countall%*%count% && title 正在刷赞---请求数:%count%  请求量:%countall%*%count%=%all%  UUID:%uuid% && goto end

if /i %1 == end title 刷赞结束---请求数:%count%  请求量:%countall%*%start%=%all%  UUID:%uuid% && goto end

title 正在刷赞---请求数:%start%/%count%  请求量:%countall%*%start%=%all%  UUID:%uuid%

:end