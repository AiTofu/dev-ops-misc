

`change_sources_list_ubuntu_22.04.sh`  替换 `/etc/apt/sources.list` ，设置成国内源，可直接下载运行

这个sh脚本会备份当前 `/etc/apt/sources.list` 到 `/etc/apt/sources.list.$current_time.bak` 文件

支持参数  qh 或 zkd 指定 清华或中科大源



如果服务器访问github有问题，先修改hosts使得github访问正常。参考  https://github.com/521xueweihan/GitHub520  或

https://github.com/AiTofu/dev-ops-misc/github

运行方法：

```bash

# 推荐用分步的命令，如果github访问不正常能看出执行结果和原因，也能看到下载的文件
## 用 curl
curl -Lo change_sources_list_ubuntu_22.04.sh https://github.com/AiTofu/dev-ops-misc/raw/main/ubuntu/change_sources_list_ubuntu_22.04.sh && chmod +x change_sources_list_ubuntu_22.04.sh && ./change_sources_list_ubuntu_22.04.sh

## 或用 wget
wget -O change_sources_list_ubuntu_22.04.sh https://github.com/AiTofu/dev-ops-misc/raw/main/ubuntu/change_sources_list_ubuntu_22.04.sh && chmod +x change_sources_list_ubuntu_22.04.sh && ./change_sources_list_ubuntu_22.04.sh

## 加参数指定源，支持 qh （表示使用清华源）  zkd （表示使用zkd） 例如 只要在上面指令后面加这个参数即可
curl -Lo change_sources_list_ubuntu_22.04.sh https://github.com/AiTofu/dev-ops-misc/raw/main/ubuntu/change_sources_list_ubuntu_22.04.sh && chmod +x change_sources_list_ubuntu_22.04.sh && ./change_sources_list_ubuntu_22.04.sh qh

wget -O change_sources_list_ubuntu_22.04.sh https://github.com/AiTofu/dev-ops-misc/raw/main/ubuntu/change_sources_list_ubuntu_22.04.sh && chmod +x change_sources_list_ubuntu_22.04.sh && ./change_sources_list_ubuntu_22.04.sh zkd


# 形式更简洁的命令，但是如果github访问有问题，可能不会报错

## curl不带参数
curl -Ls https://github.com/AiTofu/dev-ops-misc/raw/main/ubuntu/change_sources_list_ubuntu_22.04.sh | bash
## curl带参数
curl -s https://github.com/AiTofu/dev-ops-misc/raw/main/ubuntu/change_sources_list_ubuntu_22.04.sh | bash -s -- qh

## wget不带参数
wget --max-redirect=30 -qO- https://github.com/AiTofu/dev-ops-misc/raw/main/ubuntu/change_sources_list_ubuntu_22.04.sh | bash
## wget带参数
wget --max-redirect=30 -qO- https://github.com/AiTofu/dev-ops-misc/raw/main/ubuntu/change_sources_list_ubuntu_22.04.sh | bash
 -s -- zkd





```









