HOSTS_FILE = hosts

.PHONY: ping
ping:
	ansible -i $(HOSTS_FILE) pi -m ping

.PHONY: playbook
playbook:
	ansible-playbook -i $(HOSTS_FILE) -v ./setup.yaml
