.PHONY: test
test: ansible/hacking bin/json-server
	./runtests

.PHONY: deps
deps: ansible/hacking bin/json-server

ansible/hacking:
	git clone --depth=5 https://github.com/ansible/ansible.git

bin/json-server:
	go get -x -d github.com/modcloth-labs/json-server
	go build -o $@ -x github.com/modcloth-labs/json-server

.PHONY: distclean
distclean:
	$(RM) -r ansible
