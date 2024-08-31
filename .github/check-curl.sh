#!/bin/bash

# Specify your hosts file path
hosts_file="HOSTS.txt"

# Function to check URL validity using curl
check_url() {
    url=$1
    # Use curl command to check if the URL is accessible, suppress output
    curl -s --head $url > /dev/null
    return $?
}

# Backup the original hosts file
cp $hosts_file "${hosts_file}.bak"

# Read through the hosts file line by line
while IFS= read -r line; do
    # Extract the URL part (assuming URLs are at the beginning of each line in hosts file)
    url=$(echo "$line" | awk '{print $2}')
    
    if [ -n "$url" ]; then
        # Check URL validity
        check_url $url
        if [ $? -ne 0 ]; then
            # URL is invalid, delete the corresponding line
            sed -i "/$url/d" $hosts_file
            echo "Removed invalid URL: $url"
        fi
    fi
done < "$hosts_file"

echo "Invalid URLs removed from $hosts_file"

# If you want to limit the script's runtime to 5 hours, you can use the timeout command (requires system support)
# timeout 5h bash your_script.sh
