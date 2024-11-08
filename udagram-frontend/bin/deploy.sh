
#!/bin/bash

# Check if the build directory exists
if [ -d "../www" ]; then
  # Sync the build files with the S3 bucket
  aws s3 sync ../www/* arn:aws:s3:::udagramweb --delete
else
  echo "Build directory does not exist. Please check the path."
  exit 1
fi
