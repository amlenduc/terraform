provider "kubernetes" {
    config_path = "~/.kube/config"
    config_context = "meetups-k8s"
    config_context_cluster = "meetups-k8s"
}