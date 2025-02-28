FROM ubuntu:latest

RUN export DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y trace-cmd

WORKDIR /mnt/stateful_partition/kube-ephemeral-ssd

COPY run_workload.sh .

RUN chmod +x run_workload.sh

CMD ["./run_workload.sh"]