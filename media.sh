#!/bin/sh
#!/bin/bash

#该文件为沐雨酆臻(1755711948)编写制作 转载或使用请不要删除该文谢谢!
#以下沐雨酆臻简称(本人)
#沐雨酆臻团队欢迎您
#有什么问题请邮箱发送到myfz@temoli.cn 或者上面的QQ号 或者进群:700512388联系群主

#下面命令已经封装好 会改的你就改 不会改的请不要乱动 谢谢
#如果是因为你乱改出的问题 请不要来找我 与本人(沐雨酆臻)无关 自己负责
#该文件为免费使用和下载
#如果你是付费得到的 请立马去退款和报警 本人(沐雨酆臻)概不负责
#还有请不要昧着良心去倒卖谢谢


#以下为测试加密用可以删掉
export PATH=$PATH:/bin/bash

#获取本目录
basepath=$(cd `dirname $0`; pwd)
#从根目录进入本目录
cd $basepath
chmod -R 777 $basepath
#重要参数请勿删除
RED_COLOR="\E[5;31m"
GREEN_COLOR="\E[5;32m"
END="\E[0m"
res="\033[37;35;5m"
rese="\033[39;49;0m"
#获取参数并设置变量
a=$1
b=$2
c=$3
d=$4
flie=".nomedia"
#创建文件
fie(){
touch $flie
}
#判断文件是否存在   我就这么写了 怎么滴吧
fli(){
if [ -f $1 ];then
ll=""
else
fie
fi
}
#可循环函数
#--------(
dirsc(){
a=$1
echo -e "\n\n\r 函数内"$a
#-----
if [ -d $a ];then
#---{
aia=${a##*/}
echo $a
echo -e "\n\n\r 截取" $aia
#-- 判断文件夹路径是否带斜杠
#避免后续出错只能这样喽
stra="" 
results=$(echo $aia | grep "${stra}") 
if [[ "$results" != "" ]];then
echo -e "\n\n\r 不等于空" $results
cd $a
fli $a"/"$flie
#----??
if [ -z $a ];then
echo -e "\n\n\r 空目录"
else
echo -e "\n\n\r 不为空 继续执行"
#----<遍历剩下的目录
hhg=$(ls $(echo $a))
echo $hhg
arraya=(${hhg})
lengtha=${#arraya}  
#for ((i=0; i<${lengtha}; i++)); do 
for elements in "${arraya[@]}"; do
echo $elements
reggs=$(echo $$elements | grep "${stra}") 
if [[ "$reggs" != "" ]];then
echo "继续剩下的目录"
aga=$(echo $a"/*")
aga=$(ls -d $(echo $aga))
continue
else
echo "目录到头了"
fi
done
    if [[ ${i} == ${lengtha} ]]; then  
    #exit 0;
    echo $i"循环数"$lengtha
    break
    #exit 1;
    fi  
done
#---->遍历剩下的目录结束
#----%
array=(${aga})
length=${#array[@]}  
lengthpp=${#array} 
#for ((i=0; i<${lengthpp}; i++))
for i in $(seq 0 $((${length})))
do  
for element in "${array[@]}";do
if [[ -d $element ]];then
echo -e "\n\n\r 文件夹:"$element
fi
cd $element
pwd
fli $aga"/"$flie
    if [ ${i} == ${lengthpp} ]; then  
    echo $i"循环数二"$lengthapp
    exit 0;
        break  
    fi  
done
exit;
done
#----%
fi
#-----??
else
echo -e "\n\n\r 等于空" $results
cd $a
fli $a$flie
#----?
if [ -z $a ];then
echo -e "\n\n\r 空目录"
else
echo -e "\n\n\r 不为空 继续执行"
#----<遍历剩下的目录
hhg=$(ls $(echo $a))
echo $hhg
arraya=(${hhg})
lengtha=${#arraya}  
#for ((i=0; i<${lengtha}; i++))
for i in $(seq 0 $((${length})))
do 
for elements in "${arraya[@]}"; do
echo $elements
reggs=$(echo $$elements | grep "${stra}") 
if [[ "$reggs" != "" ]];then
echo "继续剩下的目录"
aga=$(echo $a"*")
aga=$(ls -d $(echo $aga))
continue
else
echo "目录到头了"
fi
done
    if [ ${i} == ${lengtha} - 1]; then  
    #exit 0;
    echo $i"循环数"$lengtha
    break
    #exit 1;
    fi  
done
#---->遍历剩下的目录结束
#----%
array=(${aga})
length=${#array[@]}  
lengthpp=${#array}  
#for ((i=0; i<${lengthpp}; i++))
for i in $(seq 0 $((${length})))
do  
for element in "${array[@]}";do
if [[ -d $element ]];then
echo -e "\n\n\r 文件夹:"$element
fi
cd $element
pwd
fli $aga$flie
    if [[ ${i} == ${lengthpp} ]]; then  
    echo $i"循环数二"$lengthapp
    exit 0;
        break  
    fi  
done
exit;
done
#----%
fi
#-----?
fi
#--
#echo $(echo $aga)
#----&
if [[ -z $aga ]];then
echo -e "\n\n\r 空目录"
exit;
else
echo -e "\n\n\r 不为空 继续遍历"
dirsc $aga
fi
#-----&
#---}
fi
#-----
}
#--------)
if [[ $a == "" ]];then
echo -e ${res}"文件夹路径不能为空"${rese}
echo -e "本命令行为 一键为指定目录下 所有文件夹里自动创建.nomedia文件\n\r\n 用法:media /sdcard/abc\n\n必须是绝对路径 否则修改不到 不然你自己改命令"
else
#-----
if [ -d $a ];then
#---{
ia=${a##*/}
#echo $a
#echo "截取" $ia
#-- 判断文件夹路径是否带斜杠
#避免后续出错只能这样喽
strB="" 
result=$(echo $ia | grep "${strB}") 
if [[ "$result" != "" ]];then
#echo "不等于空" $result
cd $a
fli $a"/"$flie
ag=$(echo $a"/*")
ag=$(ls -d $(echo $ag))
cd $ag
fli $ag"/"$flie
else
#echo "等于空" $result
cd $a
fli $a$flie
ag=$(echo $a"*")
ag=$(ls -d $(echo $ag))
cd $ag
fli $ag$flie
fi
#--
#echo $(echo $ag)
kds=$(dirsc $ag)
echo -e "\n\n\r 回调"$kds
#---}
fi
#-----
fi
echo -e ${res}"\n\r\n输入的路径"$a${rese}

#Github https://github.com/myfz-yz/nomedia




