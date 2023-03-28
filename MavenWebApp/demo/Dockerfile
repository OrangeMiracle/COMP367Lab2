# Docker image for springboot file run
# VERSION 0.0.1
# 使用java8镜像
FROM java:8
 
 
# VOLUME指定了临时文件目录为/tmp
# 其效果是在主机 /var/lib/docker 目录下创建了一个临时文件，并链接到容器的/tmp
# VOLUME [ "/logs" ]
 
ADD target/项目名.jar 项目名.jar
# 运行jar包
RUN bash -c "touch /项目名.jar"
RUN cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime   && echo 'Asia/Shanghai' >/etc/timezone
ENTRYPOINT [ "nohup", "java", "-jar", "${项目名}.jar", "--server.port=${端口号}", ">${log名}.log", "2>&1", "&"]
