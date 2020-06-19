provider "kubernetes" {
  config_context_cluster = "minikube"
}

resource "kubernetes_deployment" "myrs1" {
  metadata {
    name = "rsweb1"
  }

  spec {
    replicas = 3
    selector {
      match_expressions {
        key = "env"
        operator = "In"
        values = ["dev"]
      }
    }

    template {
      metadata {
        name = "rspod1"
        labels = {
          env = "dev",
          dc = "IN",
          app = "webserver"
        }
        annotations = {
          "key" = "value"
        }
      }

      spec {
        container {
          image = "vimal13/apache-webserver-php"
          name = "mycon1"
        }
      }
    }
  }
}