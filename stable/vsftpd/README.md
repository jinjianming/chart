## 设置用户名密码
    FTP_USER: ftp
    FTP_PASS: ftp
## 定义你的ftp服务器地址
    PASV_ADDRESS:
## 镜像配置
    image:
## 设置ftp宿主机持久化目录
    hostPath:
      enabled: true
      path: /home/ftp
      type: ''
## 如果没有k8s环境使用docker run
    docker run -d -v /my/data/directory:/home/vsftpd \
    -p 20:20 -p 21:21 -p 21100-21110:21100-21110 \
    -e FTP_USER=myuser -e FTP_PASS=mypass \
    -e PASV_ADDRESS=127.0.0.1 -e PASV_MIN_PORT=21100 -e PASV_MAX_PORT=21110 \
    --name vsftpd --restart=always fauria/vsftpd
## 默认社区的vsftpd不支持匿名用户、进行二次开发
    镜像下载路径 https://download.csdn.net/download/qq_43348295/12910412
    
## 修改ftp-deployent.yaml将name和value注释去掉即可
### 改造点 http://note.youdao.com/s/cIfr1j5f
         #用户开关需要配合二次开发镜像
         # 是否开启匿名用户
         ANONYMOUS_ENABLE: "no"
