#!/bin/bash

H=700
W=700

for tt in *
do
	for pp in 20 40
	do
		for nn in 10 30
		do
			filename=$(basename -- "$tt")
			filename="${filename%.*}"
			echo $filename
			../../../code/gaussian-patches-texture-synthesis/lgm_texture_no_quilting_iio.py $tt $pp $nn $W $H ${filename}_${pp}_${nn}_${W}_${H}_no_quilting.png
		done
	done
done
