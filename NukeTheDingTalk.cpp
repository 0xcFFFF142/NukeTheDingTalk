#pragma execution_character_set("utf-8")
#include <iostream>
#include <string>
#include <windows.h>
using namespace std;


string shuazan(string uuid, int count, int status, double interval, int Farewellmode)
{
	string shell = "curl -G --silent --output NUL https://lv.dingtalk.com/interaction/createLike?uuid=" + uuid + "\&count=" + to_string(count);
	LPCSTR cshell = shell.c_str();
	if (Farewellmode == 0)
	{
		for (int i = 0; i < status; i++)
		{
			WinExec(cshell, SW_NORMAL);
			cout << "正在刷赞---请求数:" << i + 1 << "/" << status << "次" << " 请求量：" << count << "*" << (i + 1) << "=" << (i + 1) * count << " UUID:" << uuid << endl;
			Sleep(interval);
		}
	}
	else if (Farewellmode == 1)
	{
		for (int i = 0;;i++) 
		{
			WinExec(cshell, SW_NORMAL);
			cout << "正在刷赞---请求数:" << i + 1 << "/∞次" << " 请求量：" << count<<"*"<<(i+1)<<"="<<(i + 1) * count << " UUID:" << uuid << endl;
			Sleep(interval);
		}
	}
	return "执行成功";
}

int main(int argc, char **argv)
{
	SetConsoleOutputCP(65001);
	shuazan(argv[1],atoi(argv[2]),atoi(argv[3]), atof(argv[4]), atoi(argv[5]));
}