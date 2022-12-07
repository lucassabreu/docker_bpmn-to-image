all:
	./build

build-docker:
	docker build -t ghcr.io/lucassabreu/bpmn-to-image:latest .
