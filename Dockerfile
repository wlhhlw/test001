FROM williamyeh/java8
MAINTAINER ROUAN
ENV LANG C.UTF-8
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo '$TZ' > /etc/timezone
VOLUME /tmp
COPY target/test.jar /app.jar
EXPOSE 9090
ENTRYPOINT ["java","-Djava.security.egd=file:/dev/./urandom","-jar","-Xms2g","-Xmx2g","/app.jar"]
