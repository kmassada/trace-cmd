FROM ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y trace-cmd

WORKDIR /app

COPY run_workload.sh /app

RUN chmod +x /app/run_workload.sh

CMD ["./run_workload.sh"]