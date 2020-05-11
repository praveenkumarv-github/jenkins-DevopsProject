docker run --rm -v /data/jenkins/dockfiles/pipeline/maven-app:/app -v /root/.m2:/root/.m2 -w /app maven:3-alpine "$@"
