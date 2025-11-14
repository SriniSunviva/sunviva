# Terraform GCP VM (minimal)

This small Terraform project creates a single Compute Engine VM in GCP.

Files:
- `versions.tf` — Terraform and provider constraints
- `provider.tf` — Google provider (project/region)
- `variables.tf` — configurable variables
- `main.tf` — `google_compute_instance` resource
- `outputs.tf` — useful outputs (external IP)
- `example.tfvars` — example values

Authentication
- Recommended: install Google Cloud SDK and run `gcloud auth application-default login`.
- Alternatively create a service account with `roles/compute.instanceAdmin.v1` and `roles/iam.serviceAccountUser`, download the JSON key, then set the environment variable:

Powershell example:

```powershell
setx GOOGLE_APPLICATION_CREDENTIALS "C:\path\to\service-account-key.json"
# then open a new shell to pick up the env var
```

Usage (PowerShell)

```powershell
cd c:\Users\Rama\data\test\terraform-gcp-vm
terraform init
terraform plan -var-file="example.tfvars" -out=tfplan
terraform apply "tfplan"
```

Cleanup

```powershell
terraform destroy -var-file="example.tfvars"
```

Tips
- Edit `example.tfvars` with your `project` and optionally change `machine_type` and `image`.
- Use `gcloud compute ssh` or add your SSH public key to the instance metadata if you need SSH access.
