# The Gift of Giving

# Line 1
def give_gift(receiver, gift)
  puts "You gave #{receiver} the gift of #{gift}"
end

# Line 2
def show_gratitude(sender, gift)
  puts "#{sender}, thank you for the #{gift}"
end

# Line 3
def record_transaction(sender, receiver, gift)
  File.open('gift_transactions.txt', 'a+') do |file|
    file.puts "#{sender} gave #{receiver} the gift of #{gift}"
  end
end

# Line 4
def express_appreciation(sender, receiver)
  puts "#{receiver}, I appreciate your generosity. #{sender}"
end

# Line 5
def send_notification(sender, receiver, gift)
  puts "Sent #{receiver} a notification that #{sender} gave them the gift of #{gift}"
end

# Line 6
def determine_value(gift)
  gift_values = {
    'gift card' => 25,
    'bouquet of flowers' => 20,
    'box of chocolates' => 15
  }

  gift_values[gift]
end

# Line 7
def total_given(sender)
  sum = 0
  File.open('gift_transactions.txt') do |file|
    file.each_line do |line|
      sum += determine_value(line.split[4]) if line.split[0] == sender
    end
  end
  puts "The total value of gifts given by #{sender} is #{sum}."
end

# Line 8
def total_received(receiver)
  sum = 0
  File.open('gift_transactions.txt') do |file|
    file.each_line do |line|
      sum += determine_value(line.split[4]) if line.split[2] == receiver
    end
  end
  puts "The total value of gifts received by #{receiver} is #{sum}."
end

# Line 9
def make_wishlist(receiver)
  gift_wishlist = []
  puts "What would you like to receive, #{receiver}? (Enter 'done' when finished)"
  while (input = gets.chomp) != 'done'
    gift_wishlist << input
  end
  gift_wishlist
end

# Line 10
def suggest_gift(sender, receiver)
  puts "Here is a gift suggestion for #{receiver}, #{sender}:"
  puts make_wishlist(receiver).sample
end

# Line 11
def thank_everyone
  puts 'Thank you to everyone for your kindness and generosity!'
end

# Line 12
def gift_exchange(sender, receiver, gift)
  give_gift(receiver, gift)
  show_gratitude(sender, gift)
  record_transaction(sender, receiver, gift)
  express_appreciation(sender, receiver)
  send_notification(sender, receiver, gift)
end

# Line 13
people = [
  {name: "Sally", age: 25},
  {name: "Jack", age: 30},
  {name: "Edward", age: 21},
  {name: "Olivia", age: 27},
  {name: "Lisa", age: 28}
]

# Line 14
people.each do |person|
  sender = people.sample[:name]
  receiver = person[:name]
  gift = %w(gift card bouquet of flowers box of chocolates).sample
  gift_exchange(sender, receiver, gift)
end

# Line 15
total_given('Sally')

# Line 16
total_received('Olivia')

# Line 17
suggest_gift('Jack', 'Edward')

# Line 18
thank_everyone