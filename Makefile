export GOPATH := $(shell dirname $(shell dirname $(PWD)))
PACKAGE := selenium

all:
	go build $(PACKAGE)

test:
	@echo WARNING: You probably want to use run-tests.sh
	go test -v $(PACKAGE)

fix:
	go fix $(PACKAGE)

install:
	go install $(PACKAGE)

.PHONY: all test install fix
