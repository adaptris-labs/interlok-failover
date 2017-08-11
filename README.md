# interlok-failover

Sample docker project that demostrates the Interlok failover capability.

See [Interlok failover](http://interlok.adaptris.net/interlok-docs/advanced-failover.html) documentation for more detail.

Configurations include a load balancer which will direct traffic to the running instance.

## Running

### Mutlicast

```
$ docker-compose -f docker-compose-multicast.yaml up --scale interlok=3
```

### TCP

```
$ docker-compose -f docker-compose-tcp.yaml up
```

## Testing

```
$ curl http://localhost/hello-world
```

## Notes

The following helper scripts have been provided to add worker instances to the management instance (http://localhost:8080):

```
$ ls scripts/
add_instances_to_manager_multicast.sh  add_instances_to_manager_tcp.sh
$ ./add_instances_to_manager_multicast.sh
Adding da2113eb2fd3
{"jmxUid":"da2113eb2fd3","url":"service:jmx:jmxmp://da2113eb2fd3:5555","name":"da2113eb2fd3"}
Adding 789804fca509
{"jmxUid":"789804fca509","url":"service:jmx:jmxmp://789804fca509:5555","name":"789804fca509"}
Adding 3ba6b5bc8550
{"jmxUid":"3ba6b5bc8550","url":"service:jmx:jmxmp://3ba6b5bc8550:5555","name":"3ba6b5bc8550"}
```
