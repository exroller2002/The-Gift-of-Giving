package gift

import "fmt"

// Gift is struct to represent a gift.
type Gift struct {
	Name        string
	Description string
	Price       float32
}

// Give will set up a gift to be given.
func Give(gift *Gift) {
	gift.Price = 0.0
	fmt.Printf("You are giving away %s (%s) for the price of %f\n",
		gift.Name,
		gift.Description,
		gift.Price,
	)
}

// Receive will receive a gift that was given.
func Receive(gift *Gift) {
	fmt.Printf("You received %s (%s) for the price of %f\n",
		gift.Name,
		gift.Description,
		gift.Price,
	)
}

// NewGift creates a new gift.
func NewGift(name string, description string, price float32) *Gift {
	gift := &Gift{
		Name:        name,
		Description: description,
		Price:       price,
	}

	return gift
}

// Worth is a function to calculate the worth of the gift.
func (gift *Gift) Worth() float32 {
	return gift.Price
}

// String returns the string of the gift.
func (gift *Gift) String() string {
	return fmt.Sprintf("%s (%s): %f", gift.Name, gift.Description, gift.Price)
}

// ExchangeGifts exchanges two gifts.
func ExchangeGifts(gift1, gift2 *Gift) {
	name1 := gift1.Name
	description1 := gift1.Description
	price1 := gift1.Price

	name2 := gift2.Name
	description2 := gift2.Description
	price2 := gift2.Price

	gift1.Name = name2
	gift1.Description = description2
	gift1.Price = price2

	gift2.Name = name1
	gift2.Description = description1
	gift2.Price = price1
}

// GiveGiftToPerson will give a gift to a person.
func GiveGiftToPerson(gift *Gift, person string) {
	fmt.Printf("%s is giving away %s (%s) to %s\n",
		person,
		gift.Name,
		gift.Description,
		person,
	)
}

// ReceiveGiftFromPerson will receive a gift from a person.
func ReceiveGiftFromPerson(gift *Gift, person string) {
	fmt.Printf("%s received %s (%s) from %s\n",
		person,
		gift.Name,
		gift.Description,
		person,
	)
}

// PrizeGift will award a gift as a prize.
func PrizeGift(gift *Gift, message string) {
	fmt.Printf("%s prizes %s (%s)\n", message, gift.Name, gift.Description)
}

// GiftOfGiving is a function to represent the gift of giving.
func GiftOfGiving(gift *Gift, giver string, receiver string, message string) {
	GiveGiftToPerson(gift, giver)
	ReceiveGiftFromPerson(gift, receiver)
	PrizeGift(gift, message)
}