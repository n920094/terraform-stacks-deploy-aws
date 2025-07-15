# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "development" {
  inputs = {
    regions        = ["ap-northeast-1"]
    role_arn       = "arn:aws:iam::864938110111:role/stacks-TED_EVAL-NikkeiTFStacks"
    identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "lambda-component-expansion-stack" }
  }
}

deployment "production" {
  inputs = {
    regions        = ["ap-northeast-1"]
    role_arn       = "arn:aws:iam::864938110111:role/stacks-TED_EVAL-NikkeiTFStacks"
    identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "lambda-component-expansion-stack" }
  }
}
