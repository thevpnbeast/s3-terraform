# assumes that we have already a profile named thevpnbeast-root in AWS CLI config
export AWS_PROFILE := thevpnbeast-root

.PHONY: init
init: $(backend_file)
	terraform init -input=false

.PHONY: plan
plan: init
	terraform plan -input=false

.PHONY: apply
apply: init
	terraform apply -input=false -auto-approve

.PHONY: destroy
destroy: init
	terraform destroy -auto-approve

.PHONY: validate
validate:
	terraform validate

.PHONY: fmt
fmt:
	terraform fmt -check -diff -recursive .

.PHONY: tflint_version
tflint_version:
	tflint --version

.PHONY: tflint_init
tflint_init:
	tflint --init

.PHONY: tflint_run
tflint_run:
	tflint -f compact