#!/bin/bash
#设置常用变量
. /etc/init.d/functions
[ $(id -u) !="0"] && echo "Error: you must be root to run this script" && exit 1
export PATH=/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:~/bin
download_path=/tmp/tmpdir/
env_file=/etc/profile.d/kibana.sh
install_log_path=/var/log/appinstall/
install_path=/usr/local/
software_config_file=${install_path}kibana/config/kibana.yml
clear
#----------------------------------------------------------
echo "##########################################"
echo "#                                        #"
echo "#   安装 kibana 6.0.1/6.2.4/6.3.1        #"
echo "#                                        #"
echo "##########################################"
echo "1: Install kibana 6.0.1"
echo "2: Install kibana 6.2.4"
echo "3: Install kibana 6.3.1"
echo "4: EXIT"
#-----------------------------------------------------------
# 选择安装软件版本
read -p "Please input your choice:" softversion
if [ "${softversion}" == "1" ];then
        URL="https://anchnet-script.oss-cn-shanghai.aliyuncs.com/kibana/kibana-6.0.1-linux-x86_64.tar.gz"
elif [ "${softversion}" == "2" ];then
        URL="https://anchnet-script.oss-cn-shanghai.aliyuncs.com/kibana/kibana-6.2.4-linux-x86_64.tar.gz"
elif [ "${softversion}" == "3" ];then
        URL="https://anchnet-script.oss-cn-shanghai.aliyuncs.com/kibana/kibana-6.3.1-linux-x86_64.tar.gz"
elif [ "${softversion}" == "4" ];then
        echo "you choce channel!"
        exit 1;
else
        echo "input Error! Place input{1|2|3|4}"
        exit 0;
fi
#-----------------------------------------------------------
output_msg(){}
check_dir(){}
check_yum_command(){}
download_file(){}
extract_file(){}
config_env(){}
add_config(){}

main(){
    check_dir
    check_yum_command
    download_file  
}