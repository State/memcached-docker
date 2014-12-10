# memcached-docker

Docker built image is hosted here: https://registry.hub.docker.com/u/state/memcached/

## Configuration

Configuration is done using environment variables.

- `MEMCACHED_PORT`: 11211 (default)
- `MEMCACHED_CACHESIZE`: 64 (default)

## Running

```bash
docker run -e MEMCACHED_CACHESIZE=512 state/memcached
```

