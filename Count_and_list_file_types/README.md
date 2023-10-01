1) This script is used to count and list file types in a specific directory. Here are detailed explanations of the script:

2) The script takes three inputs from the user:

    - DIRECTORY_PATH: Specifies the path of the directory where you want to count and list file types.
    - OUTPUT_FOLDER: Specifies the path of the output folder where you want to save the results.
    - OUTPUT_FILE: Specifies the name of the output file. This file will contain the script's results.

3) The script uses the cd command to navigate to the entered directory path. If this operation fails (e.g., if the directory doesn't exist), the script terminates.

4) It then creates the output file or clears its contents if it already exists. This ensures that the results will be stored in this file.

5) Next, the script processes the files found in the specified directory and uses the file --mime-type command to determine the type of each file. It processes this information, counting the number of files of each type.

6) It organizes the results using the awk and sort commands, grouping them by type. It then generates a text output containing the count for each type and the total number of types.

7) Finally, it writes this output to the specified output file and calculates the runtime. The runtime is also appended to the output file.




To run the script, follow these steps:

1) Save the script to a file using a text editor (e.g., nano or vim) and give it a ".sh" extension (e.g., "count_file_types.sh").

2) Make the script executable. You can do this in the terminal with the following command:

    --->>> chmod +x count_file_types.sh
    --->>> ./count_file_types.sh

The script will prompt you for input information (directory path, output folder, and output file name). After you provide this information, the script will execute and save the results to the specified output file. The runtime will also be displayed on the screen.

Note: Before running the script, ensure you have write permissions in the directory where the script is located or where you intend to run it. Additionally, make sure the file command is installed on your system.