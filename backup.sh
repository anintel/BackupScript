#!/bin/bash

backup_directory() {
	
	source_dir=$1
	dest_dir=$2
	backup_name="backup_$(date +%Y%m%d_%H%M%S).tar.gz"

	if [ -d "$source_dir" ]; then
		tar -czf "$dest_dir/$backup_name" "$source_dir"
		echo "Backup of '$source_dir' completed succesfully."
	else 
		echo "Error: Source directory '$source_dir' does not exist."
		exit 1
	fi
}

read -p "Enter the source path : " source_input
read -p "Enter the dest path : " dest_input

backup_directory "$source_input" "$dest_input"
