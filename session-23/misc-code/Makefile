ansible:
	git pull
	ansible-playbook -i ${tool_name}-dev.prasaddevops.shop -e ansible_user=azuser -e ansible_password=Devops@12345 tool_setup.yml -e tool_name=${tool_name}

apply:
	git pull
	terraform init
	terraform apply -auto-approve

destroy:
	git pull
	terraform init
	terraform destroy -auto-approve