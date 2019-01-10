workflow "onPush" {
  on = "push"
  resolves = ["docker://golang:1.11"]
}

action "docker://golang:1.11" {
  uses = "docker://golang:1.11"
  runs = "go"
  args = ["vet", "./..."]
}
