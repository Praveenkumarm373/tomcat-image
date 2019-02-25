docker build -t Dockerfile.txt tomcat:latest .
docker tag tomcat zippyops1/tomcat:latest
docker push zippyops1/tomcat:latest
