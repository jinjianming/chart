nodePort: 8309 #MySQL对外端口

port: 8306    #MySQL内部端口
...
readinitialDelaySeconds: 60 #就绪探针 根据服务器性能修改默认 60s
liveinitialDelaySeconds: 60 #启动探针 根据服务器性能修改默认 60s

image: "mysql"       ## 修改为镜像地址

tag: "5.7.30"                                   #镜像版本
...

mysqlRootPassword: mysql@123   # mysql-root的密码
mysqlUser: user                 #设置普通用户名称
mysqlUserPassword: usermysql@123   # mysql-user的密码

## 设置普通用户和mysqladmin ping 使用用户设置，如果"livenessroot: false" 既使用mysqlUser进行mysqladmin ping、如果"livenessroot: true"既使用root进行mysqladmin ping。
livenessroot: true
...

hostPath: /data/mysql-poc                             # 修改此处为mysql数据存储目录，hostpath方式
...
## 默认使用hostPath方式存储如果使用local-path将persistence下的enabled改为true、如果需要hostPath的将enabled改为false及为hostPath。

persistence:
  enabled: false
部署
helm install mysql-poc --name mysql-poc
