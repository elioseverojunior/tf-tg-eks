#!/usr/bin/env bash

CWD=$(pwd)

find "${CWD}" -name ".terragrunt-cache" -type d -exec rm -rf {} \;
find "${CWD}" -name ".terraform.lock.hcl" -type f -exec rm -rf {} \;

TG=(
  "${CWD}/sa-east-1/clusters/sharedtools/eks-addons/"
  "${CWD}/sa-east-1/clusters/sharedtools/eks-addons-critical/"
  "${CWD}/sa-east-1/clusters/sharedtools/aws-auth/"
  "${CWD}/sa-east-1/clusters/sharedtools/eks/"
  "${CWD}/sa-east-1/clusters/sharedtools/vpc/"
  "${CWD}/sa-east-1/clusters/sharedtools/encryption-config/"
)

for tg_dir in "${TG[@]}";
do
  echo "========================================================================================================================"
  echo "Destroying ${tg_dir}"
  echo "========================================================================================================================"
  echo -e ""
  cd "${tg_dir}"
  terragrunt destroy -auto-approve
  cd "${CWD}"
  echo -e ""
done
