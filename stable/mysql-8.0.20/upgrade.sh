if [[ -z $1 ]]; then
        echo "USAGE: sh $0 values.yaml"
else
        helm upgrade mysql-poc-8 --values $1 .
fi
