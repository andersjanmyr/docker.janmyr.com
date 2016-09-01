
./update-basic-auth.sh

pwd_dir='/home/ec2-user/htpasswd'
host=docker.janmyr.com
project=nginx-proxy

ssh $host "\
  docker kill $project; \
  docker rm $project; \
  docker run -d -p 80:80 \
  -v $pwd_dir:/etc/nginx/htpasswd \
  -v /var/run/docker.sock:/tmp/docker.sock:ro \
  --name $project \
  jwilder/nginx-proxy"
