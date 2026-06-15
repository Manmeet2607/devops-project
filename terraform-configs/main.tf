terraform{
    required_providers{  // The required_providers block is about declaring and pinning the provider plugin.
        minikube = {
            source = "scott-the-programmer/minikube"
            version = "0.4.2"
        }
    }
}

provider "minikube" {
    kubernetes_version = "v1.30.0" //The provider block is about configuring that provider’s behavior.
}

resource "minikube_cluster" "minikube_docker"{
    driver = "docker"
    cluster_name = "complete-devops-project"
    addons = [
        "default-storageclass",
        "storage-provisioners"
    ]
}