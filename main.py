from subprocess import Popen, DEVNULL
from os import system, _exit


def shuazan():
    uuid = str(input("你的uuid是："))
    value = int(input("你想刷多少赞："))
    times = int(input("重复多少次"))
    shell = "curl -G https://lv.dingtalk.com/interaction/createLike?uuid=" + uuid + "&count=" + str(value)
    for x in range(0, times):
        Popen(shell, stdout=DEVNULL)
        LikesVlaue = (x + 1) * value
        print("%d个赞" % LikesVlaue)
    shuazan()
    choice = str(input("再来一次?(Y/N)"))
    if choice == "y":
        shuazan()
    elif choice == "n":
        exit(0)


shuazan()
