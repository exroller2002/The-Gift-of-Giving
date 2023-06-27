#First we create a class called 'Gift'
class Gift
  #Initialize our class with instance variables
  def initialize(recipient, gift_name, occasion="Happy Holidays")
    @recipient = recipient
    @gift_name = gift_name
    @occasion  = occasion
  end

  #Define a method to wrap the gift.
  def wrap
	  puts "Wrapping #{@gift_name} for #{@recipient}."
	end
	
  #Define a method to print a message for the recipient.
	def message
		puts "To: #{@recipient} #{@occasion}"
	end
	
  #Define a method to deliver the gift.
	def deliver
		puts "Delivering #{@gift_name} to #{@recipient}!"
	end
	
  #Define a method to show all of the steps of giving the gift.
	def give
		wrap
		message
		deliver
	end
end

#Create a new instance of the Gift class.
gift = Gift.new("John Doe", "iPad")

#Call the give method to execute all of the steps of giving the gift.
gift.give

#We would see the following output:
#Wrapping iPad for John Doe.
#To: John Doe Happy Holidays
#Delivering iPad to John Doe!