#系统环境变量，随机数字范围在0~32767
echo $RANDOM
#令数字与大小写字符相结合，并且带上特殊字符，可以达到很长的位数，这样的随机数很安全
openssl rand -base64 8

8表示位数
#通过时间（date）获得随机数
date +%s%N
#通过/dev/urandom配合chksum生成随机数
head /dev/urandom | cksum
#通过UUID生成随机数
cat /proc/sys/kernel/random/uuid
#使用expect附带mkpasswd生成随机数
yum install -y expect
mkpasswd -l 9 -d 2 -c 3 -s 1

-l ：指定密码长度
-d ：指定密码中数字的数量
-c ：指定密码中小写字母的数量
-C ：指定密码中大写字母的数量
-s ：指定密码中特殊字符的数量
