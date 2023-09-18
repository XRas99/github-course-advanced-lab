#! /bin/bash

# prompting a user to enter a response to the initial question
echo "Are you enjoying the course so far?"
echo -n "Enter "y" for Yes, "n" for No:"

#storing the response in a variable called "answer"
read answer

# if condition to handle the user's different responses
if [ $answer == "y" ]; 
then
    echo "Nice going, keep on the hard work!!!"
elif [ $answer == "n" ]; 
then
    echo "Oh, very sad to hear that, we will contact you for feedback"
else
    echo "This is not a valid answer!!!, Enter either "y" or "n" "
    echo "Please re-run the script to try again."
fi

