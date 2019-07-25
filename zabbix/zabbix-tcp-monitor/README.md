# TCP 状态监控模板 

- 支持Zabbix版本：Zabbix 3.x ～ 4.x

## 插件介绍

- 通过ss获取TCP的11种状态，进行监控

## 使用帮助

1. 请将tcp_status.sh放置在/etc/zabbix/plugins/目录下，并设置执行权限 chmod +x /etc/zabbix/plugins/tcp_status.sh

2. 请将tcp_status.conf放置在/etc/zabbix/zabbix.agentd.d/目录下

3. 打开Web界面-->配置-->模板-->导入-->选择zbx_export_templates-tcp.xml，注意请将聚合图形选择上。

4. 在对应的主机上添加该模板

## 截图展示

![TCP](https://github.com/unixhot/newops-x/blob/master/zabbix/static/tcp.png)


