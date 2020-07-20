# 定义nginx副本数量
  replicaCount: 2
# 定义nginx工作进程数量,建议和limit同步
  worker_processes: 2
# 将工作进程绑定到CPU组。每个CPU集由允许的CPU的位掩码表示
  worker_cpu_affinity: 01 10
# 定义nginx单个工作进程可以允许同时建立外部连
