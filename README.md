# NukeTheDingTalk
*亲爱的钉钉我们又来了*
## 1.介绍
NukeTheDingTalk是一个2021传新版本钉钉可用的刷赞脚本

 就酱
 
 ## 2.用法
 
 1--->从 [release](https://github.com/0xcFFFF142/NukeTheDingTalk/releases/latest) 下载最新的版本
 
 2--->下载并打开Fiddler(你自己不会下么 
 
 3--->开启Fiddler的HTTPS解密
> Tools-Options-HTTPS
>
> 勾选 Capture HTTPS CONNECTs
>
> 勾选 Decrypt HTTPS traffic

 
 3--->打开钉钉 找到一个可怜的直播准备开刷
 
 4--->获取UUID
 
![1.png](pic/1.png)

![2.png](pic/2.png)

![3.png](pic/3.png)

![4.png](pic/4.png)

## FAQ -- 常见问题解答

Q:我GitHub图片加载不出来

A:请使用coding镜像 [Click Here](https://fxc0000142.coding.net/public/NukeTheDingtalk/NukeTheDingTalk/git/)
  
Q:UUID抓不到怎么办

A:使劲抓(你不告诉我详细问题我上哪告诉你解答

Q:Fiddler里面没有`h5.dingtalk.com`肿么办

A: 
+ 请检查Fiddler的Https解密是否正常开启

+ 请检查Fiddler的代理配置是否正常

+ 请检查钉钉是否使用了浏览器代理(系统代理

 > 诊断钉钉是否使用了系统代理
 >
 > 在钉钉里面打开直播看Fiddler有没有刷出dingtalk.exe的HTTP或HTTPS

Q:在刷赞的时候,同学们一直闪退,这跟刷赞有关系吗

A:有的.Android端的钉钉在观看直播时,赞的数量达到int的最大值时就会闪退(大约21.4亿,实际值为`2,147,483,647`

A:当赞的数量超过了int的最大值时,会变成`-2,147,483,647`

A:而钉钉不会显示负的赞数,所以会显示0

A:但是当你刷赞刷回正数,钉钉也会显示当前数值.因此程序内显示的提交数**不等于**真实的赞数

A:所以(理论上)手机端是可以无限闪退的,当然没准钉钉哪个版本修复了这个BUG,但是现在(20210126)还没修复

Q:为什么直播结束显示0赞

A:超过了int的最大值就会这样 --- int的最大值是`2,147,483,647`.

A:当赞的数量超过了int的最大值时,会变成负的int(就是`-2,147,483,647`

A:而钉钉不会显示负的赞数,所以会显示0

Q:这么多都跟int有关,int究竟是啥

A:我觉得[这个](http://www.acesheep.com/src/helpyou/?int)很适合你

Q:我有些问题想问

A:建议你在提问前看看这些: 

> GitHub源: [第一个](https://github.com/0xc0000142/Stop-Ask-Questions-The-Stupid-Ways)  [第二个](https://github.com/0xc0000142/How-To-Ask-Questions-The-Smart-Way)
>
> Coding镜像: [第一个](https://fxc0000142.coding.net/public/NukeTheDingtalk/Stop-Ask-Questions-The-Stupid-Ways/git/files)  [第二个](https://fxc0000142.coding.net/public/NukeTheDingtalk/How-To-Ask-Questions-The-Smart-Way/git)

如果你能遵守这些的话 ---->   [Click Here](https://qm.qq.com/cgi-bin/qm/qr?k=J6__CiOm8p23mJKF8GBllPuYkqXylG98&jump_from=webapi)

如果你不能遵守这些   ---->   **滚!!!!!!!!!!!!!!!!**
