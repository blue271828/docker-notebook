PJTDIR := $(realpath $(dir $(lastword $(MAKEFILE_LIST))))

.PHONY: build
build:
	@ docker-compose -f docker-compose.test.yml build

.PHONY: notebook
notebook:
	@ docker-compose -f docker-compose.test.yml run -p 8888:8888 -v ${PJTDIR}:/home/jovyan/work notebook

.PHONY: goss
goss:
	@ docker-compose -f docker-compose.test.yml run sut dgoss edit -u root notebook

.PHONY: test
test:
	@ docker-compose -f docker-compose.test.yml run sut

.PHONY: clean
clean:
	@ docker-compose -f docker-compose.test.yml down
