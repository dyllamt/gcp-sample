.PHONY: terraform-apply
terraform-apply:
	cd projects/main; terraform init; terraform apply