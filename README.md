# baramaki

A Dockerfile to run [iocingestor](https://github.com/ninoseki/iocingestor) to collect ばら撒きメール回収の会 members IoCs.

```bash
git clone https://github.com/ninoseki/baramaki

# Put yoru Twitter credentials
vim config.yml

docker build -t baramaki .
docker run -i -d -p 8000:8000 baramaki
```
