# Brice Widger
# 11/5/19
# Assignment 1.1
# Bellevue University
# Server-Side Scripting Ruby


#--------------------------------------------------------------------------
# 
# Script Name: RubyJoke.rb
# Version: 1.0
# Author: Jerry Lee Ford, Jr.
# Date: March 2010
# 
# Description: This Ruby script tells a series of 5 humorous jokes
# 
# Website: https://www.iliketurtles.com
# Last Update: November 2019
#--------------------------------------------------------------------------


# Define custom classes ---------------------------------------------------

#Define a class representing the console window
class Screen
  def cls  #Define a method that clears the display area
    puts ("\n" * 25)  #Scroll the screen 25 times
  end
end


# Main Script Logic -------------------------------------------------------

Console_Screen = Screen.new  #Initialize a new Screen object

#Execute the Screen object's cls method in order to clear the screen
Console_Screen.cls

#Prompt the player for permission to begin the game
puts "Would you like to hear a few funny jokes? (y/n)"

#Collect the player's response
answer = STDIN.gets

#Remove any extra characters appended to the string
answer.chop!

#Analyze the player's response
if answer == "n"  #See if the player elected not to play

  Console_Screen.cls  #Clear the display area

  #Invite the player to return and play again
  puts "Sorry to hear that. Please return and play again soon."

else
  
  Console_Screen.cls  #Clear the display area

  #Display the beginning of the first joke
  puts "What is black and white and yellow all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Yo momma's face. (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
 
  #Display the beginning of the second joke
  puts "What is black and purple and blue all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Yo momma's face on acid. (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the third joke
  puts "What is black and white and brown all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "I don't know. I was hoping you'd tell me first. (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the fourth joke
  puts "What is black and white and green all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Hm, might wanna get that checked out... (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area

  #Display the beginning of the fifth joke
  puts "What is ORANGE? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Donald Trump. (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area

  #Display the beginning of the sixth joke
  puts "What is a tangerine? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Donald Trump's momma's face. (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area

  #Display the beginning of the seventh joke
  puts "What is white and white and white all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "ZzzZzzzz... (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area

  #Display the beginning of the eighth joke
  puts "What is black and black and black all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "This program is autistic apparently. (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area

  #Display the beginning of the nineth joke
  puts "What is black and white and red with water all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "My eyes crying myself to sleep thinking of more jokes. (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  #Console_Screen.cls  #Clear the display area
  
  #Display the beginning of the tenth joke
  puts "What is gum and coffee stain and bananna all over? (Press Enter)"

  pause = STDIN.gets  #Force the player to press Enter to continue

  #Display the punch line
  puts "Press enter and you will die. (Press Enter)"


  pause = STDIN.gets  #Force the player to press Enter to continue


  Console_Screen.cls  #Clear the display area

  puts "Thanks for playing the Ruby Joke game! Copyright 2019. https://www.iliketurtles.com"


end


