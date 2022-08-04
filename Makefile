help:
	@echo - E2E Automation -
	@echo
	@echo Use this to create infra, then configure what you want.
	@echo 


ansible-ping:
	cd ansible && \
	ansible all -m ping

ansible-deps:
	cd ansible && \
	ansible-playbook -l all playbooks/deps.yml

ansible-node:
	cd ansible && \
	ansible-playbook -l all playbooks/node.yml

ansible-near-cli:
	cd ansible && \
	ansible-playbook -l all playbooks/near-cli.yml

ansible-verify-cpu:
	cd ansible && \
	ansible-playbook -l all playbooks/verify-cpu.yml

ansible-nearcore:
	cd ansible && \
	ansible-playbook -l all playbooks/nearcore.yml --extra-var="nearcore_environment=$(AS_NEARCORE_ENV)"

ansible-setup-neard:
	cd ansible && \
	ansible-playbook -l all playbooks/setup-neard.yml --extra-var="nearcore_environment=$(AS_NEARCORE_ENV)"

ansible-setup-validator:
	cd ansible && \
	ansible-playbook -l all playbooks/setup-validator.yml


ansible-stake-pool:
	cd ansible && \
	ansible-playbook -l all playbooks/stake-pool.yml --extra-var="account_id=$(ACCOUNT_ID),public_key=$(PUBLIC_KEY)"

ansible-uptime:
	cd ansible && \
	ansible-playbook -l all playbooks/near-uptime.yml