import sys
from subprocess import Popen, DEVNULL


def start(uuid, count, status):
    shell = "curl -G https://lv.dingtalk.com/interaction/createLike?uuid=" + uuid + "&count=" + str(count)
    for x in range(0, status):
        Popen(shell, stdout=DEVNULL)
        LikesValue = (x + 1) * count
        print("正在刷赞---请求数:已经执行%d次，一共%d次 请求量:%d" % (x+1, status, LikesValue))


start(str(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]))
