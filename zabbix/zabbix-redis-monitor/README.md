# Redis 状态监控模板

## 使用帮助

1. 请将redis_status.sh放置在/etc/zabbix目录下，并设置执行权限 chmod +x /etc/zabbix/redis_status.sh

2. 请将redis_status.conf放置在/etc/zabbix/zabbix.agentd.d/目录下

3. 打开Web界面-->配置-->模板-->导入-->选择zbx_export_templates-redis.xml，注意请讲聚合图形选择上。

4. 在对应的主机上添加该模板