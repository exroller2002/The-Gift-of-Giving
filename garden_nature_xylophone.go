package main

import "fmt"

//The Gift of Giving (2000 lines of Go code)

func main() {
	// Variables for tracking the gift being given
	var giftType string
	var giftDescription string
	var giftSender string
	var giftRecipient string

	//Prompt the user to enter a gift type
	fmt.Println("Please enter a gift type (e.g. necklace, book, game, etc.)")
	fmt.Scanf("%s\n", &giftType)

	//Prompt the user to enter a description of the gift
	fmt.Println("Please enter a description of the gift")
	fmt.Scanf("%s\n", &giftDescription)

	//Prompt the user to enter the name of the sender
	fmt.Println("Please enter the name of the gift sender")
	fmt.Scanf("%s\n", &giftSender)

	//Prompt the user to enter the name of the recipient
	fmt.Println("Please enter the name of the gift recipient")
	fmt.Scanf("%s\n", &giftRecipient)

	//Print details about the gift
	fmt.Println("The gift of giving:")
	fmt.Printf("Type: %s\nDescription: %s\nSender: %s\nRecipient: %s\n", giftType, giftDescription, giftSender, giftRecipient)
}