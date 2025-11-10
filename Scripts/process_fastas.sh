#!/bin/bash

file_path="/home/bioinforuser02/Desktop/Project_linux/data/fasta/"

for current_file in "${file_path}"/*.txt;
	do
	filename=$(basename "$current_file")
	echo "Processing ${filename} .."
     	
	seq_count=$(grep "^>" "$current_file"| wc -l);
	if [[ ${seq_count} -lt 5 ]]; then  
		echo "Warning: ${filename} has only ${seq_count} sequences. Skipping .."
	else
		echo "${filename} has ${seq_count} sequences. Passed preprocessing!"
		seq_headers=$(grep "^>" "current_file")
		echo "$seq_headers" >> "${file_path}/results/seq_headers.txt
		
	fi
       
	echo "Finished processing ${filename}!"
done

echo "Done processing all files!"
