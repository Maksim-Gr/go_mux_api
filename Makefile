BINARY_NAME=go_mux_api

build:
	GOARCH=amd64 GOS=darwin go build -o ${BINARY_NAME}-darwin cmd/server/main.go
	GOARCH=amd64 GOS=linux go build -o ${BINARY_NAME}-linux cmd/server/main.go
	GOARCH=amd64 GOS=windows go build -o ${BINARY_NAME}-windows cmd/server/main.go

run:
	./${BINARY_NAME}

build_and_run: build run

clean:
	go clean
	rm ${BINARY_NAME}-darwin
	rm ${BINARY_NAME}-linux
	rm ${BINARY_NAME}-windows

dep:
	go mod download
vet:
	go vet

lint:
	golang-lint run --enable-all

test:
	go test -race ./..

test_coverage:
	go test ./... -coverprofile=coverage.out