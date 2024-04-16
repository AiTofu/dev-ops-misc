#!/bin/bash

# Ubuntu server 22.04 软件源设置成中国大陆镜像源
# 调用本脚本加上 参数 qh 或 qinghua 或 tsinghua 表示用清华源
# 调用本脚本加上 参数 zkd 或 zhongkeda 或 ustc 表示用中科大源
# 其他情况默认使用 阿里源（淘宝源）

# 获取当前时间并格式化
current_time=$(date +"%Y%m%d_%H%M%S")

# 备份当前的 sources.list 文件
cp /etc/apt/sources.list /etc/apt/sources.list.$current_time.bak

# 获取调用脚本的第一个参数
st=$1

# 转换参数为小写
st=${st,,}

# 根据参数设置不同的内容
if [[ "$st" == "qh" || "$st" == "qinghua" || "$st" == "tsinghua" ]]; then
    content='
# 使用清华源
# 参考帮助： https://mirrors.tuna.tsinghua.edu.cn/help/ubuntu/

deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy main restricted universe multiverse

deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse

deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse

deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse
# deb-src https://mirrors.tuna.tsinghua.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse
'
elif [[ "$st" == "zkd" || "$st" == "zhongkeda" || "$st" == "ustc" ]]; then
    content='
# 使用中科大源
# 参考帮助：https://mirrors.ustc.edu.cn/help/ubuntu-releases.htm

deb https://mirrors.ustc.edu.cn/ubuntu/ jammy main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy main restricted universe multiverse

deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-updates main restricted universe multiverse

deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-backports main restricted universe multiverse

deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-security main restricted universe multiverse
deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-security main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.ustc.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse
# deb-src https://mirrors.ustc.edu.cn/ubuntu/ jammy-proposed main restricted universe multiverse
'
else
    content='
# 使用阿里源 淘宝源
# 参考帮助 https://developer.aliyun.com/mirror/ubuntu/

deb https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse
deb-src https://mirrors.aliyun.com/ubuntu/ jammy main restricted universe multiverse

deb https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse
deb-src https://mirrors.aliyun.com/ubuntu/ jammy-security main restricted universe multiverse

deb https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse
deb-src https://mirrors.aliyun.com/ubuntu/ jammy-updates main restricted universe multiverse

deb https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse
deb-src https://mirrors.aliyun.com/ubuntu/ jammy-backports main restricted universe multiverse

# 预发布软件源，不建议启用
# deb https://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse
# deb-src https://mirrors.aliyun.com/ubuntu/ jammy-proposed main restricted universe multiverse
'
fi

# 替换 /etc/apt/sources.list 文件内容
echo "$content" | sudo tee /etc/apt/sources.list

# 执行系统更新
sudo apt update && sudo apt upgrade -y
