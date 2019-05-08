#!/bin/bash
input=$@;

echo "Please wait..."
echo ""
lst_domains=$(echo $input | tr "," "\n")
aka=""
nonaka=""
for x in $lst_domains
do
	result=$(dig $x)
	if echo $result | grep -q -E 'edgekey|edgesuite|akadns|srip|akam.net'; 
	then 
    	#ip=$(dig $x +short)
		aka+="$x"'|'
		
	else 
		nonaka+="$x"'|'
	fi		 
done

echo "Export results to a file?(Y/N)." 
read -p "" -e output
if [ "$output" = "Y" ] || [ "$output" = "y" ]; then
	rm ~/Downloads/Output.txt;
echo "Domains within Akamai:" >> ~/Downloads/Output.txt;
echo "======================" >> ~/Downloads/Output.txt;
	echo "" >> ~/Downloads/Output.txt;
	
	lst_aka=$(echo $aka | tr "|" "\n")
	for i in $lst_aka
	do
		echo "$i" >> ~/Downloads/Output.txt;
	done
	echo "" >> ~/Downloads/Output.txt;
echo "Domains not pointed to an Akamai edgehostname:" >> ~/Downloads/Output.txt;
echo "=============================================" >> ~/Downloads/Output.txt;
	echo "" >> ~/Downloads/Output.txt;

	lst_nonaka=$(echo $nonaka | tr "|" "\n")
	for e in $lst_nonaka
	do
		echo "$e" >> ~/Downloads/Output.txt;
	done;
	clear
	echo "File Exported to the Current user Downloads folder with the file name Output.txt ..."
else	
echo "Domains within Akamai:" 
echo "======================"
	lst_aka=$(echo $aka | tr "|" "\n")
	for i in $lst_aka
	do
		echo "$i"
	done
	echo ""
echo "Domains not pointed to an Akamai edgehostname:" 
echo "=============================================" 
	lst_nonaka=$(echo $nonaka | tr "|" "\n")
	for e in $lst_nonaka
	do
		echo "$e"
	done;
fi

echo;
echo "Done with the \"long\" work....";