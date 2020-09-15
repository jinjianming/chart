## 设置用户名密码
    FTP_USER: baidu
    FTP_PASS: baidu
## 定义你的ftp服务器地址
    PASV_ADDRESS:
## 镜像配置
    image:
## 设置ftp宿主机持久化目录
    hostPath:
      enabled: true
      path: /home/ftp
      type: ''
