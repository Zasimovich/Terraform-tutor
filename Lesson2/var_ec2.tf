
variable "http_port" {
  description = "for HTTP requests"
  type        = string
  default     = 8080
}

variable "http80_port" {
  description = "for HTTP 80 requests"
  type        = string
  default     = 80
}

variable "ssh_port" {
  description = "for SSH requests"
  type        = string
  default     = 22
}

# replace ssh key on your own
variable "public_key" {
  description = "ssh key for EC2 machines"
  type        = string
  default     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQCdTheHytw/1f/4VBXd4b+aoWj7SpOAsN9rMjrECCsGg8Z2c/ZmQLicLnhkXKVG7dcM9eKX05Xud06ZxWlQ7JvwarAJadNbnQml6IfAxC30P7/4Fh5JaU9ingbwJwZ4WeRPLPgph6qU1gXz8S+PIOd4Qf9bO1H4vxY+dnuQLjs0h1nobfWRznQPSuJCAvLgD0F7rxpWtI7ZlkH9WS2JiLUwLfhEJUCvVrQfNF9rcQ0tNPocUIBoqcG1qTfP5/x6igQDdfTcn12nqyBoNHzkSdLRnVKrzg604EBoZdIh9j/grfhTwX3qUw6mfmBszVqIwdemAd7xQr0lsNScQ14odv0avy+4Xc9rmxxcpg1tBwmRyb//VX4T8+p1LTHSJEM9oYe+XfFHNs404YQqs4TCfIGWoVW0IM2qHmOTRguC+C40tIlA1LtG+6iaU5M8M/8E9NG0uj5zmyCm5lvsFGnMc2afZZM4TsElFrMQdYXN3lBoSkts4xldsi015a1VP0MAnAJsNMNzVyhzC5bmJanL1OrGiLJstwHqtamWdpTc3h5tvtRDw04hivnA8A5SrTqZJrhWgMcaSKsgM+BsGksSqDzA5SUASC6oLaemRymWfM4ZmS5qGk9LDmpQKIlV0Btl30v7b0JFF5JJfv9lxiAqZ+QHiu95UJ9EwwSy4LzOdCMGpw== root@Atlantis"
}
