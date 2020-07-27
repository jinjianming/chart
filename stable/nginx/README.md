# 定义nginx副本数量
  replicaCount: 2
# 定义nginx工作进程数量,建议和limit同步
  worker_processes: 2
# 将工作进程绑定到CPU组。每个CPU集由允许的CPU的位掩码表示
  worker_cpu_affinity: 01 10
# 定义nginx单个工作进程可以允许同时建立外部连
  worker_connections: 2048
# 设置是否开启站点模式、如果为true则将宿主机的/data目录通过站点模式映射出来。
  hostPath:
    enabled: true
    path: /data
# 端口
service:
  type: NodePort
  port: 8899
  portapp: 8898  #此端口为站点模式端口映射本地目录使用
# 部署
  helm install -f values.yaml --name nginx .
