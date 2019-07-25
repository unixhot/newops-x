############################################################
# $Name:         zabbix_linux_plugins.sh
# $Version:      v1.0
# $Function:     zabbix plugins
# $Author:       Jason Zhao
# $organization: www.unixhot.com
# $Create Date:  2014-08-10
# $Description:  Monitor Linux Service Status
############################################################
tcp_status_fun(){
	TCP_STAT=$1
	#netstat -n | awk '/^tcp/ {++state[$NF]} END {for(key in state) print key,state[key]}' > /tmp/netstat.tmp
	ss -ant | awk 'NR>1 {++s[$1]} END {for(k in s) print k,s[k]}' > /tmp/netstat.tmp
	TCP_STAT_VALUE=$(grep "$TCP_STAT" /tmp/netstat.tmp | cut -d ' ' -f2)
	if [ -z $TCP_STAT_VALUE ];then
		TCP_STAT_VALUE=0
	fi
	echo $TCP_STAT_VALUE
}

main(){
   tcp_status_fun $1
}

main $1
