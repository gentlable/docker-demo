# イメージ
FROM openjdk:8-jdk-alpine
# Dockerfile内でのみ使える変数
ARG JAR_FILE=target/*.jar
# jarのコピー
COPY ${JAR_FILE} app.jar
# イメージ
ENTRYPOINT ["java","-jar","/app.jar"]