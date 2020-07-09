files=$(ls | wc -l)

function answer {
	read response
}

echo "Please guess how many files are in the current directory?"
answer

while [[ $response -gt $files ]] || [[ $response -lt $files ]]
do
 if [[ $response -gt $files ]]
 then
  echo "Your guess was too high, please try again."
  answer
 elif [[ $response -lt $files ]]
 then
  echo "Your guess was too low, please try again."
  answer
 fi
done

if [[ $response -eq $files ]]
then
 echo "Congratulations you guessed correctly!"
fi

