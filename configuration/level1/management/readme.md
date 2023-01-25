
# Management
Deploy the management services

```bash
#Note: close previous session if you logged with a different service principal using --impersonate-sp-from-keyvault-url
rover logout

# login a with a user member of the caf-maintainers group
rover login -t adebisikukuicloud.onmicrosoft.com -s 519c7046-aa2d-4d4b-912e-ed5e367f171a

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/management \
  -tfstate_subscription_id 519c7046-aa2d-4d4b-912e-ed5e367f171a \
  -target_subscription 519c7046-aa2d-4d4b-912e-ed5e367f171a \
  -tfstate management.tfstate \
  -env netenv \
  -level level1 \
  -p ${TF_DATA_DIR}/management.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the management landing zone, you can move to the next step:

[Deploy Identity](../../level1/identity/readme.md)
