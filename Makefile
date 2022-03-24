.PHONY: build
build:
	docker build -t effective-ansible-docker .

.PHONY: test
test: build
	docker run --rm -v $(shell pwd):/work -it effective-ansible-docker ansible-playbook -i debian/inventory/test_inventory.ini debian/test_playbook.yml
