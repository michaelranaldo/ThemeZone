#!/bin/bash
DIRECTORIES=(i3 polybar)
CONFIG_DIR=~/.config
for i in "${DIRECTORIES[@]}"
do
	echo "Making a directory for $i in $CONFIG_DIR/$i"
	# Create the directory if it does not already exist
	if [[ ( -d "$CONFIG_DIR/$i" || -L "$CONFIG_DIR/$i" ) ]]; then
		x=""
		# Otherwise, iterate through and find a directory to move it to
		# So what we're doing here is repeating for as long as a directory exists
		while [[ ( -d "${CONFIG_DIR}/${i}.old${x}" || -L "${CONFIG_DIR}/${i}.old${x}" ) ]]; do
			x=$(($x+1))
		done
		# Thoughts - change this to make the most recently created file 1 and move the rest up
		echo "File(s) $CONFIG_DIR/$i through to $CONFIG_DIR/$i.old$(($x-1)) exist. Moving existing file to $CONFIG_DIR/$i.old$x"
		mv $CONFIG_DIR/$i ${CONFIG_DIR}/${i}.old${x}
	fi
	echo "Creating the symlink $CONFIG_DIR/$i"
	ln -sf $(pwd)/$i/ $CONFIG_DIR/$i
done

echo "Completed."
