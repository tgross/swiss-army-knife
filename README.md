# swiss-army-knife

A container for debugging other containers. A companion tool to my blog post https://blog.0x74696d.com/posts/debugging-python-containers-in-production/

```
ID= # container you want to debug
PID= # target process
docker run -it \
    --pid=container:$ID \
    --net=container:$ID \
    --cap-add sys_admin \
    --cap-add sys_ptrace \
    0x74696d/swiss-army-knife \
    /usr/share/bcc/tools/pythoncalls $PID
```
