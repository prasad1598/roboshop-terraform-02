git pull

ansible-playbook -i $1-dev.prasaddevops.shop, -e ansible_user=ec2-user -e ansible_password=DevOps321 -e app_name=$1 roboshop.yml