#!/bin/bash
if [ -z "$fastq_path" ]
then
      echo “Please define fastq_path environment variable”
else
      echo "\$fastq_path is NOT empty"
for i in ${fastq_path}/*/*.fastq.gz
do
   j=${i#*Unaligned/*/};
   j=${j//-/_}
   id1=${j%/*};
   id2=${j#*\/};
   id2=${id2%.f*};
   k=$id2"_"$id1".fastq.gz";
   echo cp $i $k
   cp $i $k;
 done
fi
