
all: boot2docker_up start open

boot2docker_up:
	boot2docker up

build:
	docker run --rm -v "`pwd`:/src" grahamc/jekyll build

start:
	docker run --rm -v "`pwd`:/src" --name="jekyll_server" -p 4000:4000 grahamc/jekyll serve -H 0.0.0.0 &

stop: 
	docker stop jekyll_server

open:
	open "http://`boot2docker ip 2>/dev/null`:4000"
