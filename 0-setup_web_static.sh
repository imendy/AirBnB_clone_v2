#!/usr/bin/env bash

# ... (nginx installation if not present)

# Set up directories and a test index.html
base_dir="/data/web_static/"
releases_dir="$base_dir/releases/test"
shared_dir="$base_dir/shared"
rel_index="$releases_dir/test/index.html"

# ... (similar structure to create directories and index.html)

# Change ownership
sudo chown -R ubuntu:ubuntu /data/

# Nginx configuration
echo "server {
	listen 80;
	server_name endy.tech;
	root $base_dir/current;
	index index.html;

	location /hbnb_static {
		alias $base_dir/current;
	}
}" | sudo tee "$nginx_cfgfile" > /dev/null

# Reload Nginx
sudo nginx -s reload

# Exit
exit 0
