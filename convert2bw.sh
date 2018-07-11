find . -type f -name '*.*' -print0 |  while IFS= read -r -d '' file; 
	do 
		echo $file &&  convert  "$file" -colors 2 +dither -type bilevel  ../clean/`head -n 1 /dev/urandom | md5sum | cut -f1 -d " "`.bmp; 
	done
