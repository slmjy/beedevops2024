# 
FROM alpine:latest
# 
WORKDIR /home/ubuntu/Desktop/Docker_Patrik 
# 
COPY . /home/ubuntu/Desktop/Docker_Patrik
# 
RUN apk add --no-cache bash 
# 
EXPOSE 8080 
# 
ENV TZ=UTC 
# 
RUN ash /home/ubuntu/Desktop/Docker_Patrik/show_processes.sh 
# 
ENTRYPOINT ["ash", "-c"] 
# 
CMD ["echo 'Aktuální datum a čas: '; date"]


