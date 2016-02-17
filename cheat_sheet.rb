# Man Page Cheat Sheet Basic Objectives:

# Create a ruby script
# print out a menu of at least command line and exit
# print out the command line options that you want man pages for: (mv, cp, mkdir, ls, rm)
# when a user makes a selection output the man page for that selection
# when a user chooses quit, exit the program
# Man Page Cheat Sheet Bonus Objectives:

# Put the menu in a loop
# Allow the user to input a search term and output the result of the man page for that search term
# Hints:

# You are allowed to hard code the command line options (ls, cp, mv, ect...)
# This article should be helpful for figuring out how to store the man page result in a variable or outputting the man page command: http://blog.bigbinary.com/2012/10/18/backtick-system-exec-in-ruby.html (Links to an external site.) (Links to an external site.)
# There is a lot of information here: (https://canvas.devpointlabs.com/courses/6/pages/d2-ruby-fundamentals) that should help you.


def main_menu
	puts "Cheat Sheet"
	puts "1: Command Line"
	puts "2: Search"
	puts "3: Exit"
	puts "*****Make a Selection*****"
	input_1 = gets.strip

	case input_1 
	   when "1"
	   	command_line
	   when "2"
	   	search_menu
	   when "3"
	   	exit(0)
	end   	
end

def command_line


	puts "COMMAND LINE"
	puts "1: cp"
	puts "2: mv"
	puts "3: cd"
	puts "4: mkdir"
	puts "5 Main Menu"
	puts "*****Make a Selection*****"
	input_2 = gets.strip

	case input_2
	  when "1"
	  	puts `man cp`
	  when "2"
	    puts `man mv`
	  when "3"
	    puts `man cd`
	  when "4"
	    puts `man mkdir`
	  when "5" 
	    main_menu  
	  else 
	  	puts "Please Select 1-4"
	 end   
end
 
 def search_menu
   puts "Search for commands"
   input_search = gets.strip
   if input_search = "cp" || input_search = "mv" || input_search = "cd" || input_search = "mkdir"
   puts `man #{input_search}`
   elsif input_search != "search_menu"
   	puts "Not a Valid Selection"
   else puts "no"
   end
 end	

main_menu
command_line
search_menu