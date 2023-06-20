<?php 

// Gift of giving code example in PHP

function giveGiftTo($recipient, $gift) {
	// Check to see if the gift exists
	if (!$gift) {
		echo 'There is no gift to give!<br>';
		return;
	}
	
	echo 'Giving ' . $gift . ' to ' . $recipient;
	echo '<br>  ';
	
	// Give the gift
	$giftGiven = true;
		
	// Check to see if gift was successfully given
	if ($giftGiven) {
		echo 'Gift successfully given!';
		echo '<br>  ';
	}
	
}

// Give a gift to someone
giveGiftTo('John', 'flowers');

// Give a gift to someone else
giveGiftTo('Jane', 'book');

// Give a gift to someone else without a gift specified
giveGiftTo('Sally', null);

?>