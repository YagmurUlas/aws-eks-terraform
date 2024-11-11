# Project Report

## Project Description
**This project aims to automate the deployment of a Node.js Express application to a Kubernetes cluster using ArgoCD.** The project involves leveraging ArgoCD's continuous deployment capabilities to automatically update Docker images and configure Slack notifications.

## Approach
1. **ArgoCD Installation**: ArgoCD was installed on the Kubernetes cluster and the ArgoCD server was configured.
2. **Node.js Express Application Deployment**: The application was deployed to the Kubernetes cluster using a Helm chart. The `values.yaml` file was configured to use the Docker image hosted on ECR.
3. **Automated Deployment**: ArgoCD was configured to automatically synchronize when new Docker images are pushed. This was achieved using the `argocd/application.yaml` file.
4. **Slack Notifications**: Slack notifications were configured using the ArgoCD Notifications Controller to send alerts to a Slack channel upon specific events. This was set up using a ConfigMap and a Secret.
5. **Kubernetes Configurations**: Basic Kubernetes resources such as Deployment and Namespace were created and configured.

## Personal Note
**I did not have hands-on experience with this topic before starting this project.** I researched and learned the necessary steps to implement the solution effectively. This approach ensured continuous deployment and monitoring of the application. ArgoCD's automatic synchronization and notification features allowed for real-time tracking of application updates and status.

## Conclusion
**This approach ensured continuous deployment and monitoring of the application.** ArgoCD's automatic synchronization and notification features allowed for real-time tracking of application updates and status.
