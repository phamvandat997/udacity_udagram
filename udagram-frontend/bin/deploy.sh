
#!/bin/bash

# Check if the build directory exists
if [ -d "./dist/udagram-fronend" ]; then
  # Sync the build files with the S3 bucket
  aws s3 sync ./dist/udagram-fronend arn:aws:s3:::udagramweb --delete
else
  echo "Build directory does not exist. Please check the path."
  exit 1
fi
