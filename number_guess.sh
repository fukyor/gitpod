#!/bin/bash
PSQL="psql --username=freecodecamp --dbname=number_guess -t --no-align -c"
export PSQL
secret_number=$(( RANDOM % 1000 + 1 ))
number_of_guesses=0
guessed=false

prompt(){
  echo Enter your username:
  read username
}

if_exist(){
  if [[ -z $1 ]]; then
    return 1
  else
    return 0
  fi 
}

exist(){
  games_played=$($PSQL "SELECT games_played FROM users WHERE username = '$username';")
  best_game=$($PSQL "SELECT best_game FROM users WHERE username = '$username';")
  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."
}
inexist(){
  echo "Welcome, $username! It looks like this is your first time here."
  TEMP=$(psql --username=freecodecamp --dbname=number_guess -t --no-align -c "INSERT INTO users (username) VALUES ('$username');")
}

NAN(){
  if ! [[ $1 =~ ^[0-9]+$ ]]; then
    echo "That is not an integer, guess again:"
    return 0
  else
    return 1
  fi
}

Guess(){
  while [ $guessed != true ]; do
      read guess
      ((number_of_guesses++))
      if NAN "$guess"; then
        continue;
      else
        if [[ $guess -eq $secret_number ]]; then
            echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"
            guessed=true
        elif [[ $guess -lt $secret_number ]]; then
            echo "It's higher than that, guess again:"
        else
            echo "It's lower than that, guess again:"
        fi
      fi
  done
}

update(){
  $($PSQL "UPDATE users SET games_played = games_played + 1 WHERE username = '$username';")
}

update1(){
  if [ -z "$best_game" ] || [ $number_of_guesses -lt $best_game ]; then
  A=$($PSQL "UPDATE users SET best_game = $number_of_guesses WHERE username = '$username';")
  fi
}

echo "Enter your username:"
read username
clear
user_exists=$($PSQL "SELECT username FROM users WHERE username = '$username';")
if if_exist "$user_exists" ; then
  exist
else
  inexist
fi


echo "Guess the secret number between 1 and 1000:"
Guess
update
update1




