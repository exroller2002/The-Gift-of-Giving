#!/usr/bin/perl

# The Gift of Giving

# This program will help you to give the most meaningful
gifts to your friends and family.

use strict;
use warnings;
use 5.010;

# Get the name of the person who we are buying a gift for
print "Who are you buying a gift for?\n";
my $person = <STDIN>;
chomp($person);

# Get information about the person's likes and dislikes
print "What does $person like? (List things separated with commas)\n";
my $likes = <STDIN>;
chomp($likes);

# Get the person's budget
print "What is the budget for this person?\n";
my $budget = <STDIN>;
chomp($budget);

# Calculate the average cost of the items they listed
my @items = split(/,/, $likes);
my $avg_cost = $budget / @items;

# Print out the average cost of the items we are looking for
print "The average cost of items for $person should be \$$avg_cost\n";

# Loop through the items and search for ones that are in budget
foreach my $item (@items) {
	my $price = searchForItem($item);

	# Check if we are in budget
	if($price <= $budget) {
		print "You can buy $item for \$$price\n";
	}
}

# Search for an item and return the cost
sub searchForItem {
	my $item = shift;

	# Search for the item in the database
	# Simulate a database search by returning a random number
	# between 0 and the budget

	my $price = int(rand($budget));

	return $price;
}