#---------------------------------------------------------------------------------------------
# Brice Widger
# 1/11/2020
# Assignment 8.1
# Bellevue University
# Server-Side Scripting Ruby
#---------------------------------------------------------------------------------------------
# References:
# https://learn.co/lessons/ruby-gets-input
# https://www.dotnetperls.com/while-ruby
# https://www.geeksforgeeks.org/ruby-string-concat-method/
# https://www.rubyguides.com/2015/05/working-with-files-ruby/ 
# textbook
#---------------------------------------------------------------------------------------------

# defining main funtion
def file_manipulation
    puts "Enter folder path: "   

    # collect user input
    # gets.strip referenced from: https://learn.co/lessons/ruby-gets-input
    pathInput = gets.strip 

       # checking verification of folder
       # referenced: pg. 301 textbook
       if File.exist?(pathInput) then
           puts "Folder found"
       else  
           # if folder does not exist create the folder
           puts "Folder created"
           Dir.mkdir(pathInput)
       end
      
       # prompt user input
       puts "\nEnter your resolutions:\n" 
       
       # resolutions array declaration
       resolutions = []   
       # resolutions array index
       i=0  

       # creating an array of resolutions using while true loop
       # referencing while loop array: https://www.dotnetperls.com/while-ruby
       while true

           # collects user responses
           res = gets.strip

           # q stops list entries
           if res == 'q'
               break
           else
               # store in resolutions array
               resolutions[i] = res
           end
           i = i+1
       end
      
       # setting input path by linking file name to it
       # concat reference: https://www.geeksforgeeks.org/ruby-string-concat-method/
       pathInput.concat('\resolutions.txt')

       # write resolutions array to the file mentioned above
       # Mode reference: pg. 307 textbook
       # Read and Read Line method used below reference: pg. 310 textbook
       File.open(pathInput, "w+") do |j| 
           j.puts(resolutions)
       end

       #--------------------------------------------------------------------------------------------
       # checking where resolution.txt file is
       #--------------------------------------------------------------------------------------------
    
       # for loop that sets max 3 guesses where path is
       # reference: https://www.dotnetperls.com/while-ruby
       for i in 0..2

           # prompt and collect user input
           # gets.strip referenced from: https://learn.co/lessons/ruby-gets-input
           puts "\nEnter location where resolutions.txt file exists:\n"
           path = gets.strip
           
           # verifying whether file exists
           # reference: pg. 300 textbook
           if(File.file?(path))

               # if file exists, prompt user to press ENTER
               puts "\nFile Found. Press ENTER to view its contents.\n"
               
               enter = gets

               # check if user has pressed ENTER key
               if(enter == "\n")

                   # if yes, then print the contents of the file
                   # Reading and Writing Files in Ruby reference: 
                   # https://www.rubyguides.com/2015/05/working-with-files-ruby/
                   resolutionsFile = File.open(path)
                   resolutionsData = resolutionsFile.read
                   puts resolutionsData
               end

               # break loop
               break

           else  
               # if file path does not exist, ask user if they'd like to try again
               puts "\nFile not found. Would you like to try again?\n"
               puts 'Enter y/n'

               # collects reponse
               userChoice = gets

               # if user picks no, or if user exceeds 3 attempts, break loop
               if(i == 2 || userChoice == 'n' )

                   break

               end
               
           end
       end
      
       # if number of attempts exceeded three, prompt the user
       if (i >= 2)
           puts 'Exceeded number of attempts.'
       end
    end
    
    # call the function created above called "file_manipulation"
    file_manipulation