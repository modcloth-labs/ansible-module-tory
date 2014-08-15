.PHONY: test
test: ansible/hacking
	./runtests

.PHONY: deps
deps: ansible/hacking

ansible/hacking:
	git clone --depth=5 https://github.com/ansible/ansible.git

.PHONY: distclean
distclean:
	$(RM) -r ansible
