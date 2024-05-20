#!/bin/bash

# Log in to Azure CLI
az login

# Variables - replace with your actual values
RESOURCE_GROUP_NAME="YourResourceGroupName"
REGION="YourRegion"
OPENAI_RESOURCE_NAME="YourOpenAIResourceName"
SUBSCRIPTION_ID="YourSubscriptionID"

# Create a new resource group
az group create --name $RESOURCE_GROUP_NAME --location $REGION

# Create an Azure OpenAI resource
az cognitiveservices account create --name $OPENAI_RESOURCE_NAME \
    --resource-group $RESOURCE_GROUP_NAME \
    --location $REGION \
    --kind OpenAI \
    --sku s0 \
    --subscription $SUBSCRIPTION_ID
