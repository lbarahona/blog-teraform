#Kubernetes Cluster
resource "digitalocean_kubernetes_cluster" "lbarahona" {
  name    = "lbarahona"
  region  = "nyc1"
  version = "1.22.8-do.1"

  node_pool {
    name       = "lbarahona-nodes"
    size       = "s-1vcpu-2gb"
    node_count = 2
  }
}