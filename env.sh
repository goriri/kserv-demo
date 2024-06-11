# AWS Account Configuration (copy from workshop env)
export AWS_DEFAULT_PROFILE=xxxxxx
export AWS_PROFILE=xxxxxx

#eks and karpenter
export KARPENTER_NAMESPACE="kube-system"
export KARPENTER_VERSION="0.36.2"
export K8S_VERSION="1.29"

export AWS_PARTITION="aws" # if you are not using standard partitions, you may need to configure to aws-cn / aws-us-gov
export CLUSTER_NAME="kserve-demo"
export AWS_DEFAULT_REGION="us-west-2"
export AWS_ACCOUNT_ID="$(aws sts get-caller-identity --query Account --output text)"
export TEMPOUT="$(mktemp)"
export ARM_AMI_ID="$(aws ssm get-parameter --name /aws/service/eks/optimized-ami/${K8S_VERSION}/amazon-linux-2-arm64/recommended/image_id --query Parameter.Value --output text)"
export AMD_AMI_ID="$(aws ssm get-parameter --name /aws/service/eks/optimized-ami/${K8S_VERSION}/amazon-linux-2/recommended/image_id --query Parameter.Value --output text)"
export GPU_AMI_ID="$(aws ssm get-parameter --name /aws/service/eks/optimized-ami/${K8S_VERSION}/amazon-linux-2-gpu/recommended/image_id --query Parameter.Value --output text)"

echo "${KARPENTER_NAMESPACE}" "${KARPENTER_VERSION}" "${K8S_VERSION}" "${CLUSTER_NAME}" "${AWS_DEFAULT_REGION}" "${AWS_ACCOUNT_ID}" "${TEMPOUT}" "${ARM_AMI_ID}" "${AMD_AMI_ID}" "${GPU_AMI_ID}"

# Same variables above. Please modify accordingly.
cat > variables.env << EOF
AWS_DEFAULT_PROFILE=${AWS_DEFAULT_PROFILE}
AWS_PROFILE=${AWS_PROFILE}

KARPENTER_NAMESPACE=${KARPENTER_NAMESPACE}
KARPENTER_VERSION=${KARPENTER_VERSION}
K8S_VERSION=${K8S_VERSION}

AWS_PARTITION=${AWS_PARTITION}
CLUSTER_NAME=${CLUSTER_NAME}
AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}
AWS_ACCOUNT_ID=${AWS_ACCOUNT_ID}
TEMPOUT=${TEMPOUT}
ARM_AMI_ID=${ARM_AMI_ID}
AMD_AMI_ID=${AMD_AMI_ID}
GPU_AMI_ID=${GPU_AMI_ID}
EOF