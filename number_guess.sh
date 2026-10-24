#!/bin/bash

PSQL="psql -q --username=freecodecamp --dbname=number_guess -t --no-align -c"

# generate number from 1-1000 -> secret_number
secret_number=$(echo $(( (RANDOM % 1000) + 1 )))
# echo $secret_number

# prompt username
echo "Enter your username:"
read username

# lookup username
games_played=$($PSQL "SELECT COUNT(*) FROM games WHERE username = '$username';")
best_game=$($PSQL "SELECT MIN(number_of_guesses) FROM games WHERE username = '$username';")

# if returning
if [[ -z $best_game ]]
then 
  # show first time message
  echo "Welcome, $username! It looks like this is your first time here."

else
# else
  # show stats
  echo "Welcome back, $username! You have played $games_played games, and your best game took $best_game guesses."

fi

# guess number message
echo "Guess the secret number between 1 and 1000:"

# tracker for var number_of_guesses and current guess
number_of_guesses=1
guess=0

# read input
read guess

# loop 
while [ $guess != $secret_number ]
do
  # echo "Secret number is $secret_number"

  # check if int
  if [[ ! $guess =~ ^[0-9]+$ ]]
  then
    echo "That is not an integer, guess again:"
    read guess

  # if lower:
  elif [[ $guess -lt $secret_number ]]
  then 
    # show higher message
    # echo "Your guess is $guess"
    echo "It's higher than that, guess again:"
    ((number_of_guesses++))
    read guess

  # if higher:
  elif [[ $guess -gt $secret_number ]]
  then
    # show lower message
    # echo "Your guess is $guess"
    echo "It's lower than that, guess again:"
    ((number_of_guesses++))
    read guess
  fi
done

# if spot on, winner message
echo "You guessed it in $number_of_guesses tries. The secret number was $secret_number. Nice job!"

# insert into database
$PSQL "INSERT INTO games(username, number_of_guesses) VALUES('$username', $number_of_guesses);"
