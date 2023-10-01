#!/bin/bash
# Function: Count and list file types
function count_file_types() {
    local output=$(find "$DIRECTORY_PATH" -type f -exec file --mime-type {} + | awk -F: '{print $2}' | sort | uniq -c | awk '{ types[$2] += $1; total++ } END { print "File Type : Count\n-------------------"; for (type in types) print type " : " types[type]; print "------------------------\nTotal Extensions Count: " total }')
    echo -e "$output\n" >> "$OUTPUT_FOLDER/$OUTPUT_FILE"
}

# Get the directory path from the user
read -p "Enter the directory path to count and list file types: " DIRECTORY_PATH

# Get the output folder path from the user
read -p "Enter the output folder path to save the results: " OUTPUT_FOLDER

# Get the output file name from the user
read -p "Enter the output file name (e.g., file_types.txt): " OUTPUT_FILE

# Get the start time
start_time=$(date +%s)

# Run the function
count_file_types

# Get the end time
end_time=$(date +%s)

# Calculate the runtime
runtime=$((end_time - start_time))
echo "------------------------"
echo "Script execution time: $runtime seconds" >> "$OUTPUT_FOLDER/$OUTPUT_FILE"