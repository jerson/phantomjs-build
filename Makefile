build:
	docker build -t phantomjs-alpine . && docker run --rm -i -v `pwd`/artifacts:/artifacts phantomjs-alpine:latest cp /root/phantomjs.tar.bz2 /artifacts/phantomjs-alpine-x86_64.tar.bz2

build-arm64:
	docker build -f Dockerfile-arm64 -t phantomjs-alpine:arm64 . && docker run --rm -i -v `pwd`/artifacts:/artifacts phantomjs-alpine:arm64 cp /root/phantomjs.tar.bz2 /artifacts/phantomjs-alpine-arm64.tar.bz2

clean:
	rm artifacts/* 2>/dev/null || echo "clean"

