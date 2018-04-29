fancyEcho()
{
collors=(
	'\e[0;36m'
	'\e[0;32m'
	'\e[1;32m'
	'\e[1;31m'
	'\e[1;37m'
	'\e[1;33m'
	'\e[1;34m'
	'\e[1;35m'
)
string=$1
for word in $string;
do
#arr=(`echo ${string}`);
arr=( $(echo ${word} | sed "s/\(.\)/\1 /g") )
for i in "${arr[@]}"
    do
	collor=${collors[$RANDOM % ${#collors[@]} ]}
	echo -ne $collor$i$resetCollor
	sleep 0.06
done
echo -n " "
done
#echo -ne "\n"
unset IFS
}
