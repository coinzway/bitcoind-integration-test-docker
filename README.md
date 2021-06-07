# bitcoind-integration-test-docker

# Running
```
docker run -p 18443:18443 --rm coinzway/bitcoind-integration-test-docker:latest
```

# Building

Currently, this image is build automatically on docker hub.

# Building locally

Build docker image:
 
```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker build . --platform linux/amd64 -t coinzway/bitcoind-integration-test-docker:$BRANCH
```

Push to docker hub:

```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker push coinzway/bitcoind-integration-test-docker:$BRANCH
```

Both in one go:
```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker build . --platform linux/amd64 -t coinzway/bitcoind-integration-test-docker:$BRANCH && \
docker push coinzway/bitcoind-integration-test-docker:$BRANCH
```