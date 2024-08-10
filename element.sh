PSQL="psql -X --username=freecodecamp --dbname=periodic_table -t --no-align --tuples-only -c"
if [[ -z $1 ]]
then
  echo "Please provide an element as an argument."
else
  #查询元素和符号
  INPUT="$1"
  if [[ "$INPUT" =~ ^[0-9]+$ ]]
  then
    RES_ELEM=$($PSQL "SELECT atomic_number, symbol, name FROM public.elements WHERE atomic_number = $1;")
  else
    RES_ELEM=$($PSQL "SELECT atomic_number, symbol, name FROM elements WHERE symbol = '$INPUT' OR name = '$INPUT';")
  fi

  if [[ -z $RES_ELEM ]]; then
    echo "I could not find that element in the database."
  else
    IFS='|' ; TFS=$IFS
    read -r num symbol name <<< $RES_ELEM
    IFS=$TFS

    RES_ELEM1=$(psql -X --username=freecodecamp --dbname=periodic_table -t --no-align --tuples-only -c "SELECT type1, atomic_mass, melting_point_celsius, boiling_point_celsius FROM public.properties WHERE atomic_number = $num;")
    
    read -r TYPE atomic_mass melting_point_celsius boiling_point_celsius <<< $RES_ELEM1

    echo "The element with atomic number $num is $name ($symbol). It's a $TYPE, with a mass of $atomic_mass amu. $name has a melting point of $melting_point_celsius celsius and a boiling point of $boiling_point_celsius celsius."

  fi
  
fi
	