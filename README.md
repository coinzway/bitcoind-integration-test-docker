# bitcoind-integration-test-docker

Build docker image:
 
```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker build . -t coinzway/bitcoind-integration-test-docker:$BRANCH
```

Push to docker hub:

```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker push coinzway/bitcoind-integration-test-docker:$BRANCH
```

Both in one go:
```bash
BRANCH="$(git rev-parse --abbrev-ref HEAD)"
docker build . -t coinzway/bitcoind-integration-test-docker:$BRANCH && \
docker push coinzway/bitcoind-integration-test-docker:$BRANCH
```