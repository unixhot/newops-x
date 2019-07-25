# MySQL 状态监控模板 For Zabbix 3.x ～ 4.x

## 使用帮助

基于Percona监控插件，官方提供的模板在Zabbix版本大于2.0无法正常使用。

1. 请将get_mysql_stats_wrapper.sh ss_get_mysql_stats.php ss_get_mysql_stats.php.cnf放置在/etc/zabbix/plugins目录下，并设置执行权限 chmod +x /etc/zabbix/plugins/get_mysql_stats_wrapper.sh

2. 请将redis_status.conf放置在/etc/zabbix/zabbix.agentd.d/目录下

3. 打开Web界面-->配置-->模板-->导入-->选择zbx_export_templates-redis.xml，注意请讲聚合图形选择上。

4. 在对应的主机上添加该模板
