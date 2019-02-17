workflow "Goodbye deleted file" {
  on = "delete"
  resolves = ["Create an issue"]
}

action "Create an issue" {
  uses = "JasonEtco/create-an-issue@11c8e67a9a77b755021d8349484be7dd2c3092ce"
  secrets = ["GITHUB_TOKEN"]
}
