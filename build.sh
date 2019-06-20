
docker stop pr.web
docker rm pr.web
docker rmi bowen/pr.web
docker build -t bowen/pr.web .

