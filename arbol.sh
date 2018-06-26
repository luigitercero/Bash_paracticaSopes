 
# !/bin/bash
rm luis.tex
let altura=$1
let as=0

for ((i=$altura; i>0; i=$i-1)); do
	as=$altura-$i

	for ((j=$as; j<=$altura; j=$j+1)); do
		cadena+="\n"
		echo -n " "
	done	
	for ((j=0; j<=$as; j=$j+1)); do
		cadena+="**"
		echo -n "*"
		echo -n "*"
	done
cadena+=\n
echo ""
done

for ((j=0; j<=$altura; j=$j+1)); do
		cadena+=\s
		echo -n " "
	done
	cadena+="**"	
echo  -n "*"
echo  "*"

echo $cadena>>luis.tx