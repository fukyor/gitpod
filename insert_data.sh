#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi
set +x
$PSQL "TRUNCATE TABLE games, teams;"
# Do not change code above this line. Use the PSQL variable above to query your database.
while IFS="," read -r year round winner opponent winner_goals opponent_goals
do
  if [[ $year != "year" ]]
  then 
    INSERT1=$($PSQL "INSERT INTO teams (name) VALUES ('$winner') ON CONFLICT (name) DO NOTHING;") #还有一种方法就是先SELECT判断是否添加，然后再插入，但是相对代码多一些
    INSERT2=$($PSQL "INSERT INTO teams (name) VALUES ('$opponent') ON CONFLICT (name) DO NOTHING;")
    winner_id=$($PSQL "SELECT team_id FROM teams WHERE name='$winner';")
    opponent_id=$($PSQL "SELECT team_id FROM teams WHERE name='$opponent';")

    INSERT_GAME=$($PSQL "INSERT INTO games (year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES ($year, '$round', $winner_id, $opponent_id, $winner_goals, $opponent_goals);")
    
  fi
done < ./games.csv

