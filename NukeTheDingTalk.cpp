#include <iostream>
#include <string>
#include <windows.h>
using namespace std;


string shuazan(string uuid, int count, int status)
{
	string shell = "curl -G --silent --output NUL https://lv.dingtalk.com/interaction/createLike?uuid=" + uuid + "\&count=" + to_string(count);
	LPCSTR cshell = shell.c_str();
	for (int i = 0; i <= status; i++)
	{
		WinExec(cshell, SW_NORMAL);
		cout << "正在刷赞---请求数:已经执行" << i + 1 << "次,一共" << status << "次 请求量：" << (i + 1) * count << endl;
	}
	return "执行成功";
}

int main(int argc, char **argv)
{
	SetConsoleOutputCP(936);
	shuazan(argv[1],atoi(argv[2]),atoi(argv[3]));
}