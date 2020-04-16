class Contact
  def initialize(name, number)
    @_name = name
    @_number = number
  end

  def name
    @_name
  end

  def number
    @_number
  end
end

class ContactBook
  def initialize
    @contacts = {}
  end

  def add(contact)
    if @contacts[contact.name].nil?
      @contacts[contact.name] = contact.number
    else
      puts "That contact already exists"
    end
  end

  def delete(contactName)
    if @contacts[contactName].nil?
      puts "Contact not found"
    else
      @contacts.delete(contactName)
    end
  end

  def update(contact)
    if !@contacts[contact.name].nil?
      @contacts[contact.name] = contact.number
    else
      puts "Contact not found"
    end
  end

  def display
    @contacts.each { |name, number| puts "#{name}: #{number}"}
  end
end

contactBook = ContactBook.new()

while (true)
  puts "What would you like to do?"
  puts "-- Type 'add' to add a contact."
  puts "-- Type 'update' to update a contact."
  puts "-- Type 'display' to display all contacts."
  puts "-- Type 'delete' to delete a contact."
  puts "-- Type  'exit'  to exit program."

  choice = gets.chomp.downcase

  case choice
  when 'add'
    puts "What is the contact name?"
    name = gets.chomp
    puts "What is the number?"
    number = gets.chomp
    contact = Contact.new(name, number)
    contactBook.add(contact)
  when 'update'
    puts "What is the contact name?"
    name = gets.chomp
    puts "What is the new number?"
    number = gets.chomp
    contact = Contact.new(name, number)
    contactBook.update(contact)
  when 'delete'
    puts "What is the contact name?"
    name = gets.chomp
    contactBook.delete(name)
  when 'display'
    contactBook.display
  when 'exit'
    break
  else
    puts "Sorry, I couldn't understand you"
  end
end
