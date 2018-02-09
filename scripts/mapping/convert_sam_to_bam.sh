#!/bin/bash
# 
# Convert all the SAM files in a directory to BAM files with the same prefixes.
# 
# convert_sam_to_bam.sh <directory>

SAM_DIR=$1

for file in $SAM_DIR/*.sam
do 
	sam_name=`basename $file .sam`
	bam_name=$sam_name.bam
	samtools view -bS $file > $SAM_DIR/$bam_name
done
