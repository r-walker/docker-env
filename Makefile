build: .build
.build: requirements.txt Dockerfile
	docker-compose build
	echo > $@

shell: build
	docker-compose run -v $(CURDIR):/opt MyApp bash

clean:
	- rm .build
	- del .build
	- docker-compose down --rmi all


