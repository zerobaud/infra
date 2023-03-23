chunky:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit chunky

proxmox:
	ansible-playbook deploy.yaml --vault-password-file .vault-password --limit proxmox

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
