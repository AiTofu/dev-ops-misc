解决github中国大陆访问问题

修改hosts文件，参考 https://github.com/521xueweihan/GitHub520



非github访问地址：

- 文件：`https://raw.hellogithub.com/hosts`
- JSON：`https://raw.hellogithub.com/hosts.json`



hosts 文件在每个系统的位置不一，详情如下：

- Windows 系统：`C:\Windows\System32\drivers\etc\hosts`
- Linux 系统：`/etc/hosts`
- Mac（苹果电脑）系统：`/etc/hosts`
- Android（安卓）系统：`/system/etc/hosts`
- iPhone（iOS）系统：`/etc/hosts`



修改方法，把第一步的内容复制到文本末尾：

1. Windows 使用记事本。
2. Linux、Mac 使用 Root 权限：`sudo vi /etc/hosts`。
3. iPhone、iPad 须越狱、Android 必须要 root。



激活生效：

大部分情况下是直接生效，如未生效可尝试下面的办法，刷新 DNS：

1. Windows：在 CMD 窗口输入：`ipconfig /flushdns`
2. Linux 命令：`sudo nscd restart`，如报错则须安装：`sudo apt install nscd` 或 `sudo /etc/init.d/nscd restart`
3. Mac 命令：`sudo killall -HUP mDNSResponder`



文件内容快照：

```text
# GitHub520 Host Start
140.82.113.26                 alive.github.com
140.82.113.6                  api.github.com
185.199.109.153               assets-cdn.github.com
185.199.110.133               avatars.githubusercontent.com
185.199.110.133               avatars0.githubusercontent.com
185.199.110.133               avatars1.githubusercontent.com
185.199.110.133               avatars2.githubusercontent.com
185.199.110.133               avatars3.githubusercontent.com
185.199.110.133               avatars4.githubusercontent.com
185.199.110.133               avatars5.githubusercontent.com
185.199.110.133               camo.githubusercontent.com
140.82.114.22                 central.github.com
185.199.110.133               cloud.githubusercontent.com
140.82.113.10                 codeload.github.com
140.82.114.21                 collector.github.com
185.199.110.133               desktop.githubusercontent.com
185.199.110.133               favicons.githubusercontent.com
140.82.112.3                  gist.github.com
52.217.82.84                  github-cloud.s3.amazonaws.com
54.231.195.49                 github-com.s3.amazonaws.com
16.182.98.169                 github-production-release-asset-2e65be.s3.amazonaws.com
54.231.230.49                 github-production-repository-file-5c1aeb.s3.amazonaws.com
3.5.16.146                    github-production-user-asset-6210df.s3.amazonaws.com
192.0.66.2                    github.blog
140.82.114.4                  github.com
140.82.112.17                 github.community
185.199.111.154               github.githubassets.com
151.101.1.194                 github.global.ssl.fastly.net
185.199.109.153               github.io
185.199.110.133               github.map.fastly.net
185.199.109.153               githubstatus.com
140.82.112.26                 live.github.com
185.199.110.133               media.githubusercontent.com
185.199.110.133               objects.githubusercontent.com
13.107.42.16                  pipelines.actions.githubusercontent.com
185.199.110.133               raw.githubusercontent.com
185.199.110.133               user-images.githubusercontent.com
13.107.246.40                 vscode.dev
140.82.112.21                 education.github.com


# Update time: 2024-04-16T08:18:47+08:00
# Update url: https://raw.hellogithub.com/hosts
# Star me: https://github.com/521xueweihan/GitHub520
# GitHub520 Host End
```