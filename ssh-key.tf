resource "digitalocean_ssh_key" "dev-mandacaru-ssh-key" {
  name       = "dev-mandacaru-ssh-key"
  public_key = file(var.ssh_path)
}