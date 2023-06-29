terraform {
  cloud {
    organization = "alta3"

    workspaces {
      name = "my-example"
    }
  }
}
