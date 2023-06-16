resource "digitalocean_droplet" "mandacarivis" {
  name       = "mandacarivis"
  image      = var.droplet_image
  size       = var.droplet_size
  region     = var.droplet_region
  monitoring = true
  ssh_keys   = [digitalocean_ssh_key.dev-mandacaru-ssh-key.fingerprint]

  connection {
    host        = self.ipv4_address
    user        = "root"
    type        = "ssh"
    timeout     = "2m"
    private_key = file(var.ssh_path)
  }
}

output "ip_address" {
  value = digitalocean_droplet.mandacarivis.ipv4_address
}