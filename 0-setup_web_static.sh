#!/usr/bin/env bash
# A script that sets up webservers for deployment

if ! command nginx -v &> /dev/null; then
	sudo apt-get update
	sudo apt-get install nginx -y
fi

base_dir="/data/web_static/"
releases_dir="$base_dir/releases/test"
shared_dir="$base_dir/shared"
rel_index="$releases_dir/test/index.html"
nginx_cfgfile="/etc/nginx/sites-available/test_web"

for dir in "$base_dir" "$releases_dir" "$shared_dir"; do
	if [ ! -d "$dir" ]; then
		sudo mkdir -p "$dir"
	fi
done

if [ ! -f "$rel_index" ]; then
	touch "$rel_index"
	echo "Holberton School" | sudo tee "$rel_index" > /dev/null
fi

if [ -L "$base_dir/current" ]; then
	sudo unlink "$base_dir/current"
fi

sudo ln -s "$releases_dir" "$base_dir/current"

sudo chown -R ubuntu:ubuntu /data/

echo "server {
	listen 80;
	server_name endy.tech;
	root $base_dir/current;
	index index.html;

	location /hbnb_static {
		alias $base_dir/current;
	}
}" | sudo tee "$nginx_cfgfile" > /dev/null

sudo ln -sf "$nginx_cfgfile" "/etc/nginx/sites-enabled/"

sudo nginx -s reload

exit 0
