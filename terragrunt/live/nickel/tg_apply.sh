#!/usr/bin/env bash

CWD=$(pwd)

find "${CWD}" -name ".terragrunt-cache" -type d -exec rm -rf {} \;
find "${CWD}" -name ".terraform.lock.hcl" -type f -exec rm -rf {} \;

TG=(
  "${CWD}/sa-east-1/clusters/sharedtools/encryption-config/"
  "${CWD}/sa-east-1/clusters/sharedtools/vpc/"
  "${CWD}/sa-east-1/clusters/sharedtools/eks/"
  # "${CWD}/sa-east-1/clusters/sharedtools/aws-auth/"
  # "${CWD}/sa-east-1/clusters/sharedtools/eks-addons-critical/"
  # "${CWD}/sa-east-1/clusters/sharedtools/eks-addons/"
)

for tg_dir in "${TG[@]}";
do
  echo "========================================================================================================================"
  echo "Applying ${tg_dir}"
  echo "========================================================================================================================"
  echo -e ""
  cd "${tg_dir}"
  terragrunt apply -auto-approve
  cd "${CWD}"
  echo -e ""
done
