# Interfaces between a user and their contact list. Reads from and writes to standard I/O.

require_relative 'contact'
require 'csv' 


class ContactList

  # TODO: Implement user interaction. This should be the only file where you use `puts` and `gets`.
end



puts "Here is a list of available commands:"
puts "new       - Create a new contact"
puts "list      - List all contacts"
puts "show      - Show a contact"
puts "search    - Search contacts"

user_request = gets.chomp


   case user_request
   
   when /new/  
    puts "Enter your name"
    contact_name = gets.chomp
    puts "Enter you email ID"
    contact_email = gets.chomp
    Contact.create(contact_name, contact_email)
   
   when /list/
    Contact.all
     
   when /show/
      puts "Enter the ID please"
      contact_id = gets.chomp.to_i
     Contact.find(contact_id)
   
   when /search/
      puts "Enter the search term"
      contact_search = gets.chomp
      Contact.search(contact_search)
 end

