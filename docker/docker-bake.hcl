group "default" {
  targets = ["marron"]
}

target "marron" {
  target = "build_stage"
  dockerfile = "Dockerfile"
  platforms = ["linux/arm64/v8"]
  tags = ["docker.io/hakuturu583/marron:latest"]
  group = ["marron"]
}
