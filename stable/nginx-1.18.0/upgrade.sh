if [[ -z $1 ]]; then
        echo "USAGE: sh $0 values.yaml"
else
        helm upgrade nginx-poc --values $1 .
fi
