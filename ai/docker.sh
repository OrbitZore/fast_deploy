curl -fsSL https://mirrors.tencentyun.com/docker-ce/linux/ubuntu/gpg | apt-key add -
add-apt-repository "deb [arch=amd64] https://mirrors.tencentyun.com/docker-ce/linux/ubuntu $(lsb_release -cs) stable"
apt update -y && apt install docker-ce -y