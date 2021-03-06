
set -e

api_region=`sh ../output.sh ../app-api Region`
api_url=`sh ../output.sh ../app-api ApiGatewayRestApiUrl`
cognito_region=`sh ../output.sh ../ui-auth Region`
cognito_identity_pool_id=`sh ../output.sh ../ui-auth IdentityPoolId`
cognito_user_pool_id=`sh ../output.sh ../ui-auth UserPoolId`
cognito_client_id=`sh ../output.sh ../ui-auth UserPoolClientId`
s3_attachments_bucket_region=`sh ../output.sh ../uploads Region`
s3_attachements_bucket_name=`sh ../output.sh ../uploads AttachmentsBucketName`

export API_REGION=$api_region
export API_URL=$api_url
export COGNITO_REGION=$cognito_region
export COGNITO_IDENTITY_POOL_ID=$cognito_identity_pool_id
export COGNITO_USER_POOL_ID=$cognito_user_pool_id
export COGNITO_CLIENT_ID=$cognito_client_id
export S3_ATTACHMENTS_BUCKET_REGION=$s3_attachments_bucket_region
export S3_ATTACHMENTS_BUCKET_NAME=$s3_attachements_bucket_name

./env.sh
