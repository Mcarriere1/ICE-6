office_inventory=(
  "pen"
  "pen"
  "pen"
  "pencil"
  "pencil"
  "notebook"
  "notebook"
  "notebook"
  "notebook"
  "stapler"
  "paper"
  "paper"
  "paper"
  "paper"
  "envelope"
  "envelope"
  "envelope"
  "tape"
  "tape"
  "scissors"
)

declare -A stock

for item in ${office_inventory[@]}; do
  if [ -v stock[$item] ]; then
    stock[$item]=$((stock[$item] + 1))
  else
    stock[$item]=1
  fi

for key in ${!stock[@]}; do
  if [ stock[$key] -le 2 ]; then
    echo "$key: ${stock[$key]} RESTOCK NEEDED"
  else  
    echo "$key: ${stock[$key]}"
done