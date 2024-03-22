provider "kubernetes" {
  config_path = "~/.kube/config"
}

resource "kubernetes_deployment" "example" {
  metadata {
    name = "example"
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        app = "example"
      }
    }

    template {
      metadata {
        labels = {
          app = "example"
        }
      }

      spec {
        container {
          image = "nginx:latest"
          name  = "nginx"
        }
      }
    }
  }
}

