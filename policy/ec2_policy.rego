package main

deny[msg] {
  resource := input.resource_changes[_]
  resource.type == "aws_instance"
  resource.change.actions[_] == "create"
  resource.change.after.instance_type != "m7i-flex.large"

  msg := "Only m7i-flex.large instance type is allowed"
}
