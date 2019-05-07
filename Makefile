all: test

clean:
	rm -f get-started-go
	rm -rf vendor/

install: prepare
	go install

prepare:
	go mod vendor

build: prepare
	go build

test: prepare build
	echo "no tests"

.PHONY: install prepare build test
