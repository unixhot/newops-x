############################################################
# $Name:         zabbix_linux_plugins.sh
# $Version:      v1.0
# $Function:     zabbix plugins
# $Author:       Jason Zhao
# $organization: www.unixhot.com
# $Create Date:  2014-08-10
# $Description:  Monitor Linux Service Status
############################################################
redis_status_fun(){
	R_HOST=$1
	R_PORT=$2
	R_STAT_KEY=$3
	(echo -en "INFO \r\n";sleep 1;) | nc "$R_HOST" "$R_PORT" > /tmp/redis_"$R_PORT".tmp
	REDIS_STAT_VALUE=$(grep ""$R_STAT_KEY":" /tmp/redis_"$R_PORT".tmp | cut -d ':' -f2)
 	echo $REDIS_STAT_VALUE	
}

main(){
   redis_status_fun $1 $2 $3
}

main $1 $2 $3
