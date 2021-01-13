# -*- coding: gbk -*-
import sys
from subprocess import Popen, DEVNULL
from time import sleep


def start(uuid, count, status, interval):
    shell = "curl -G https://lv.dingtalk.com/interaction/createLike?uuid=" + uuid + "&count=" + str(count)
    for x in range(0, status):
        Popen(shell, stdout=DEVNULL)
        LikesValue = (x + 1) * count
        print("正在刷赞---请求数:已经执行%d次，一共%d次 请求量:%d" % (x+1, status, LikesValue))
        sleep(interval)


start(str(sys.argv[1]), int(sys.argv[2]), int(sys.argv[3]), float(sys.argv[4]))
