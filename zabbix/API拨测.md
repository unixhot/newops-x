## 基于pyresttest的restful接口测试

* [官方网站](https://github.com/svanoort/pyresttest)

### 安装pyresttest

```
[root@linux-node1 ~]# yum install -y python-pip

[root@linux-node1 ~]# pip install pyresttest
```

### 编写一个最简单的接口测试配置

pyresttest使用YAML格式描述接口测试的请求的URL，请求的方法、请求头和请求主体。
```
[root@linux-node1 ~]# vim github-api-test.yaml 

---
- config:
    - testset: "Basic tests"
    - timeout: 100
- test:
    - name: "Basic get"
    - url: "/events"

```

### 进行第一次测试
使用pyresttest指定URL和配置文件即可进行接口状态测试。
```
[root@linux-node1 ~]# pyresttest --url=https://api.github.com/ github-api-test.yaml 
Test Group Default SUCCEEDED: : 1/1 Tests Passed!
```
