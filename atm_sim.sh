balance=10000
choice=1

while [ $choice -ne 5 ]
do
	echo "===================="
	echo "1. Check Balance"
	echo "2. Withdraw"
	echo "3. Deposit" 
	echo "4. Exit"
	echo "===================="


	echo -n "Enter your choice:"
	read choice
	case $choice in
	1)
		echo
		echo -n "Your balance is ${balance}"
		;;
	2)
		echo
		echo -n "Enter amount to withdraw: "
		read withdraw
		if [[ $withdraw -le $balance ]]; then

			balance=$((balance-withdraw))
			echo "Amount withdrawn"
		else
			echo "Insufficient Balance"
		fi
		;;
	3)
		echo
		echo "Enter amount to deposit: "
		read deposit
		balance=$((balance+deposit))
		;;
	4)
		echo "===================="
		echo "Thank you for banking with us"
		echo "===================="
		choice=5
		exit 1
		;;
esac
done
