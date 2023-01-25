
# Identity
Deploy the identity services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t adebisikukuicloud.onmicrosoft.com -s 519c7046-aa2d-4d4b-912e-ed5e367f171a

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/identity \
  -tfstate_subscription_id 519c7046-aa2d-4d4b-912e-ed5e367f171a \
  -target_subscription 519c7046-aa2d-4d4b-912e-ed5e367f171a \
  -tfstate identity.tfstate \
  -env netenv \
  -level level1 \
  -p ${TF_DATA_DIR}/identity.tfstate.tfplan \
  -a plan

```


# Next steps

[Deploy Enterprise Scale - region1](../../level1/alz/region1/readme.md)
