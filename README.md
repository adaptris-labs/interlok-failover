# interlok-failover

Sample docker project that demostrates the Interlok failover capability.

See [Interlok failover](http://interlok.adaptris.net/interlok-docs/advanced-failover.html) documentation for more detail.

## Running

### Mutlicast

```
$ docker-compose -f docker-compose-multicast.yaml up --scale interlok=3
```

### TCP

```
$ docker-compose -f docker-compose-tcp.yaml up
```