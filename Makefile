CONTAINER=buger/simplewiki

build:
	docker build -t $(CONTAINER) .

push:
	docker push $(CONTAINER)
