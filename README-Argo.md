ArgoCD Installation: ArgoCD was installed on the Kubernetes cluster and the ArgoCD server was configured.
Node.js Express Application Deployment: The application was deployed to the Kubernetes cluster using a Helm chart. The values.yaml file was configured to use the Docker image hosted on ECR.
Automated Deployment: ArgoCD was configured to automatically synchronize when new Docker images are pushed. This was achieved using the argocd/application.yaml file.
Slack Notifications: Slack notifications were configured using the ArgoCD Notifications Controller to send alerts to a Slack channel upon specific events. This was set up using a ConfigMap and a Secret.
Kubernetes Configurations: Basic Kubernetes resources such as Deployment and Namespace were created and configured.
Personal Note
I did not have hands-on experience with this topic before starting this project. I researched and learned the necessary steps and try the implement the solution.
