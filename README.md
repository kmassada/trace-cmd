# Steps

### Build Container

```
git clone https://github.com/kmassada/trace-cmd.git 
cd trace-cmd 
docker build -t  trace-cmd .
```

### Save Container 

```
docker save trace-cmd -o /tmp/trace-cmd.tar
```


### Load Container 

```
docker load -i /tmp/trace-cmd.tar
```

### Run trace-cmd debug

```
sudo modprobe kheaders
sudo docker run -ti --privileged \
-v /sys/kernel/debug:/sys/kernel/debug \
-v /mnt/stateful_partition/kube-ephemeral-ssd:/mnt/stateful_partition/kube-ephemeral-ssd \
-v /tmp:/tmp trace-cmd
```