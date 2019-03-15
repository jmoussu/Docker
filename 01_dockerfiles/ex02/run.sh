docker stop dock02
docker build -f ft-rails/Dockerfile -t ft-rails:on-build .
docker build -t ex02 .
docker run --name dock02 -dit --rm -p 3000:3000 ex02
docker exec dock02 cat /opt/app/app/views/visitors/new.html.erb
