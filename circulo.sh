#!/bin/bash

radio=$1
maximax=$(echo "scale=2;  sqrt($radio*$radio) " | bc -l )
xproximo=${maximax/.*}
rm arbol.txt
for (( acutalY=$radio; acutalY>0;acutalY=acutalY-1 ))
	do
	valorx=$(echo "scale=2;  sqrt($radio*$radio-$acutalY*$acutalY)*1.8 " | bc -l )
	proximox=${valorx/.*}
	for (( xEspacio=$proximox-$xproximo; xEspacio<$xproximo; xEspacio++ ))
	do
		echo -n " ">>arbol.txt
		echo -n " "
	done
	for (( xValor=0; xValor<$proximox; xValor=xValor+1 ))
	do
		echo -n "*">>arbol.txt
		echo -n "*"
	done
	for (( xValor=0; xValor<$proximox; xValor=xValor+1 ))
	do
		echo -n "*">>arbol.txt
		echo -n "*"
	done
	echo "">>arbol.txt
	echo ""
done
for (( acutalY=0; acutalY<$radio; acutalY=acutalY+1 ))
	do
	valorx=$(echo "scale=2;  sqrt($radio*$radio-$acutalY*$acutalY)*1.8" | bc -l )	
	proximox=${valorx/.*}

	for (( xEspacio=$proximox-$xproximo; xEspacio<$xproximo; xEspacio++ ))
	do
		echo -n " ">>arbol.txt
		echo -n " "
	done
	for (( xValor=0; xValor<$proximox; xValor=xValor+1 ))
	do
		echo -n "*">>arbol.txt
		echo -n  "*"
	done

	for (( xValor=0; xValor<$proximox; xValor=xValor+1 ))
	do
		echo -n "*">>arbol.txt
		echo -n  "*"
	done
		echo "">>arbol.txt
		echo ""
done
