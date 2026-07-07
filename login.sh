username=admin
password="Admin@123"

tries=1

while [ $tries -lt 4 ]
do
	if [[ $tries -ne 1 ]]; then
		echo "$((4-tries)) tries left"
	fi
	echo "Enter username"
	read user
	echo "Enter password"
	read pass
	if [[ $user == $username && $pass == $password ]]; then
		echo "Login Success"
		exit 1
		break
	else
		echo "Incorrect Username or password"
		tries=$((tries+1))
	fi
done
echo "Too many failed attempts"

