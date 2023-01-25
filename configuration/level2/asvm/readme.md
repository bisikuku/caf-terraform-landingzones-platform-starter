# Azure Subscription Vending Machine (asvm)

```bash
# login a with a user member of the caf-platform-maintainers group
rover login -t adebisikukuicloud.onmicrosoft.com

cd /tf/caf/landingzones
git fetch origin
git checkout 2203.0

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level2/asvm \
  -tfstate_subscription_id 519c7046-aa2d-4d4b-912e-ed5e367f171a \
  -target_subscription 519c7046-aa2d-4d4b-912e-ed5e367f171a \
  -tfstate asvm_subscription_vending_machine.tfstate \
  -env netenv \
  -level level2 \
  -p ${TF_DATA_DIR}/asvm_subscription_vending_machine.tfstate.tfplan \
  -a plan

```

