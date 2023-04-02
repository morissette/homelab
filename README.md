# Setup

For now, see:
https://austinsnerdythings.com/2021/08/30/how-to-create-a-proxmox-ubuntu-cloud-init-image/

# K8S Cluster Administration

## Provision new node

### Terraform
```
cd terraform

# increase count in k8s.yaml
terraform plan
terraform apply
```

### Ansible
```
. ./venv/bin/activate
cd ansible
ansible-playbook -i hosts ansible-install-kubernetes-dependencies.yml --limit <new_node_ip>
ansible-playbook -i hosts ansible-get-join-command.yaml
ansible-playbook -i hosts ansible-join-workers.yml --limit <new_node_ip>
kubectl get nodes
kubectl describe node kube-agent-NN
```

# Utils

## Get dashboard token from service account
```
cd utils
./get_k8s_dashboard_token.sh
kubectl proxy
```
