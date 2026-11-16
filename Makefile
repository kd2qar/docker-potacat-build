

all: build

build:
	docker build --tag kd2qar/potacat .

run:
	docker run --rm -t -v ./dist:/POTACAT/dist kd2qar/potacat

shell:
	docker run -it --rm --entrypoint /bin/bash kd2qar/potacat 
