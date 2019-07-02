#!/bin/sh
AZURE_SUBSCRIPTION_ID="f7d40418-f0de-45ff-a574-f24102d9e054"
# Login to Azure
az login
#Select the subscription
az account set --subscription $AZURE_SUBSCRIPTION_ID
az ad sp create-for-rbac --role="Contributor" --scopes="/subscriptions/$AZURE_SUBSCRIPTION_ID" --name "TerraformPrincipal"