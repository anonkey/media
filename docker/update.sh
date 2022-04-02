(cd /home/media && /usr/local/bin/docker-compose pull && /usr/local/bin/docker-compose up -d --remove-orphans && /usr/bin/docker image prune -f) > /var/log/docker-updater.log 2>&1
