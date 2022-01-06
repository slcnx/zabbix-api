ansible  yun_prod -m cron -a 'minute=00 hour=03 day=* month=* weekday=0 job="/bin/docker image prune -a -f" name="每周末凌晨3点清理旧版本的镜像" state=present'
