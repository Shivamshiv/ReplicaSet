## Creating ReplicaSet using Terraform
*A ReplicaSet's purpose is to maintain a stable set of replica Pods running at any given time. As such, it is often used to guarantee the availability of a specified number of identical Pods. A ReplicaSet ensures that a specified number of pod replicas are running at any given time. However, a Deployment is a higher-level concept that manages ReplicaSets and provides declarative updates to Pods along with a lot of other useful features.*

1. Create a separate folder.
2. Copy the rs.tf file in that folder.
3. Open the command prompt and go inside that folder.
4. Run the following commands.
```
 terraform validate
 terraform init
 terraform apply -auto-approve
 terraform destroy -auto-approve
```
> - terraform validate: It will validate the syntax of the code.
> - terraform init: It will download the necessary files and plugins to run the code.
> - terraform apply -auto-approve: It will execute the code and create the entire infrastructure of replica-Set with an approval of 'yes'.
> - terraform destroy -auto-approve: It will delete the entire infrastructure of replica-Set with an approval of 'yes'.
