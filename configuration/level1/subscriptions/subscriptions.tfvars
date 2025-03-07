#
# Execute the following command to get the billing_account_name and management_group_id
#
# az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts/?api-version=2020-05-01
#
# To retrieve the first billing account
#
# billing_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:name}" -o tsv)
#
# enrollment_account_name=$(az rest --method get --uri https://management.azure.com/providers/Microsoft.Billing/billingaccounts?api-version=2020-05-01 --query "value[?properties.agreementType=='EnterpriseAgreement'].{name:properties.enrollmentAccounts[0].name}" -o tsv)
#

subscriptions = {

  launchpad = {
    name            = "netfort"
    create_alias    = false
    subscription_id = "519c7046-aa2d-4d4b-912e-ed5e367f171a"
  }
  identity = {
    name            = "netfort"
    create_alias    = false
    subscription_id = "519c7046-aa2d-4d4b-912e-ed5e367f171a"
  }
  connectivity = {
    name            = "netfort"
    create_alias    = false
    subscription_id = "519c7046-aa2d-4d4b-912e-ed5e367f171a"
  }
  management = {
    name            = "netfort"
    create_alias    = false
    subscription_id = "519c7046-aa2d-4d4b-912e-ed5e367f171a"
  }
}