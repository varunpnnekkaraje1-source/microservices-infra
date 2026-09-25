terraform {
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.30"
    }
  }
}

provider "kubernetes" {
  config_path = "~/.kube/config"
}

module "gethelp" {
  source   = "../../modules/microservice"
  name     = "gethelp"
  image    = "nginx:latest"
  replicas = 2
}

module "unified" {
  source   = "../../modules/microservice"
  name     = "unified"
  image    = "nginx:latest"
  replicas = 2
}

module "agent_assist" {
  source   = "../../modules/microservice"
  name     = "agent-assist"
  image    = "nginx:latest"
  replicas = 2
}
