
# 1) 인자가 정확히 2개인지 확인
if [ $# -ne 2 ]; then
    echo "Invalid input"
    exit 1
fi

rows=$1
cols=$2

# 2) 두 값이 모두 숫자인지 확인
if ! [[ "$rows" =~ ^-?[0-9]+$ ]] || ! [[ "$cols" =~ ^-?[0-9]+$ ]]; then
    echo "Invalid input"
    exit 1
fi

# 3) 두 값이 모두 양수인지 확인
if [ "$rows" -le 0 ] || [ "$cols" -le 0 ]; then
    echo "Input must be greater than 0"
    exit 1
fi

# Multiplication Table 출력
for ((i=1; i<=rows; i++))
do
    line=""
    for ((j=1; j<=cols; j++))
    do
	printf "%d*%d=%-4d" $i $j $((i*j))
    done
    echo ""
done


