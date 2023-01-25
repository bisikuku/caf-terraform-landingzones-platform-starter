
### Platform subscriptions
Set-up the subscription delegations for platform and landingzone subscriptions

```bash
# For manual bootstrap:
# Login to the subscription netfort with the user adebisikuku_icloud.com#EXT#@adebisikukuicloud.onmicrosoft.com
rover login -t adebisikukuicloud.onmicrosoft.com -s 519c7046-aa2d-4d4b-912e-ed5e367f171a

rover \
  -lz /tf/caf/landingzones/caf_solution \
  -var-folder /tf/caf/configuration/level1/subscriptions \
  -tfstate_subscription_id 519c7046-aa2d-4d4b-912e-ed5e367f171a \
  -tfstate platform_subscriptions.tfstate \
  -env netenv \
  -level level1 \
  -p ${TF_DATA_DIR}/platform_subscriptions.tfstate.tfplan \
  -a plan

```


# Next steps

When you have successfully deployed the subscriptions management landing zone, you can move to the next step:

[Deploy the management services](../../level1/management/readme.md)