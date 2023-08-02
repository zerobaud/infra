servo:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit servo

homebot:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit homebot

logatron:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit logatron

sandbox:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit sandbox

proxmox:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit proxmox

tinyprox:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit tinyprox

docker-media:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit docker-media

deploy:
	ansible-playbook deploy.yaml --vault-password-file .vault-password

update:
	ansible-playbook update.yaml

test:
	ansible-playbook test.yaml

encrypt:
	ansible-vault encrypt --vault-password-file .vault-password vars/vault.yaml

decrypt:
	ansible-vault decrypt --vault-password-file .vault-password vars/vault.yaml

gitinit:
	@./git-init.sh
	@echo "ansible vault pre-commit hook installed"
	@echo "don't forget to create a .vault-password too"
