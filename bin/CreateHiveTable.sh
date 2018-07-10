# Shell Script for creating hive tables

# Main Script logic
main() {
hive -f ${hqlPath}/create_${tableName}.hql
}

# Validate and execute the conf
if [ -f $1 ]; then
	. $1
else
	echo "Config file passed is not valid. Exiting the flow"
	exit
fi

if [ $# -ne 2 ]; then
	echo "Script not triggered as expected. Usage => ./createhivetables.sh <conffile> <tablename>"
fi

export tableName=$2

# Apply logging

# Execution of the script
main