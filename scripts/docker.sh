echo
echo "Installing Docker"
brew install docker
brew install docker-toolbox

# Dive == tool for exploring a docker image, layer contents, and discovering ways to shrink your Docker image size
brew tap wagoodman/dive
brew install dive

# Amazon ECR Docker Credential Helper
brew install docker-credential-helper-ecr

# Kubernetes Helm charts
brew install kubernetes-helm

# Local Kubernetes Cluster
brew install minikube

