require 'csv'

# Represents a person in an address book.
# The ContactList class will work with Contact objects instead of interacting with the CSV file directly
class Contact

  attr_accessor :name, :email 
  
  # Creates a new contact object
  # @param name [String] The contact's name
  # @param email [String] The contact's email address
  def initialize(full_name, email)
    @name = full_name
    @email = email
  end

  # Provides functionality for managing contacts in the csv file.
  class << self

    # Opens 'contacts.csv' and creates a Contact object for each line in the file (aka each contact).
    # @return [Array<Contact>] Array of Contact objects
    def all
      CSV.foreach('contacts.csv') do | contact |
      puts contact.inspect
      end
    end

    # Creates a new contact, adding it to the csv file, returning the new contact.
    # @param name [String] the new contact's name
    # @param email [String] the contact's email
    def create(name, email)
      # TODO: Instantiate a Contact, add its data to the 'contacts.csv' file, and return it.
        contact_id = CSV.read("contacts.csv").length
        CSV.open("contacts.csv", "a") do | csv_entry |
        csv_entry << [contact_id + 1, name, email]
 #       @ID = @ID + 1
      end
    end
    # Find the Contact in the 'contacts.csv' file with the matching id.
    # @param id [Integer] the contact id
    # @return [Contact, nil] the contact with the specified id. If no contact has the id, returns nil.
    def find(id)
      # TODO: Find the Contact in the 'contacts.csv' file with the matching id.
        CSV.foreach("contacts.csv") do | contact |
          if contact[0].to_i == id.to_i 
              puts contact[1], contact[2]
          end
      end

    end
    
    # Search for contacts by either name or email.
    # @param term [String] the name fragment or email fragment to search for
    # @return [Array<Contact>] Array of Contact objects.
    def search(term)
      # TODO: Select the Contact instances from the 'contacts.csv' file whose name or email attributes contain the search term.
      CSV.foreach("contacts.csv") do | contact |
        for i in (0..contact.length-1)
            if contact[i] == term
              puts "match found"
              puts contact
            end
        end  
      end  


    end
    



    def unique_contact_ID
        contact_id = @ID+10
        return unique_contact_ID
        @ID = @ID +1

    end
  end

end


