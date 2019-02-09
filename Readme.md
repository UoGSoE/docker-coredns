# Simple coredns docker image for swarm

Very basic customisation of the base [CoreDNS](https://coredns.io/) docker image.

## Deploy in a swarm

```
docker stack deploy -c coredns-stack.yml coredns
```

## Customise

Edit the `Corefile` to suit your needs, then alter the `coredns-stack.yml` file to use your own image.  Eg, for a local build :

```yaml
# coredns-stack.yml

...
  coredns:
    image: "my-amazing-coredns"
```

```
docker-compose -f coredns-stack.yml build
docker stack deploy -c coredns-stack.yml coredns
```

