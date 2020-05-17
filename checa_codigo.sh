inputs="dados/"
solucao="sols/lab07.py"
avaliado="182323/lab07.py"
outputs="saidas/"

for i in $(ls $inputs); do 
    nome=$(echo $i | cut -d "." -f 1)
    python3 $solucao < $inputs$nome".in" > $outputs$nome".res"
    python3 $avaliado < $inputs$nome".in" > $outputs$nome".out"
    diff $outputs$nome".res" $outputs$nome".out"
done

