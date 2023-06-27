#include <iostream> // include iostream library for input/output
#include <string> // include string library for strings

using namespace std; // use namespace std for easier access

// Function for accepting gift from user
void acceptGift(string name, string gift)
{
    // Print out a message
    cout << "Thank you " << name << " for giving me the gift of " << gift << "!" << endl;
}

// Function for giving gift to someone
void giveGift(string name, string gift)
{
    // Print out a message
    cout << "I am giving " << name << " the gift of " << gift << "!" << endl;
}

int main()
{
    string name1, name2, gift1, gift2; // Declare strings for holding names and gifts
    
    // Ask user for the names
    cout << "Enter the name of the first person: ";
    cin >> name1; // Get the first name
    cout << "Enter the name of the second person: ";
    cin >> name2; // Get the second name
    
    // Ask user for the gifts
    cout << "What gift are you giving the first person: ";
    cin >> gift1; // Get the first gift
    cout << "What gift are you giving the second person: ";
    cin >> gift2; // Get the second gift
    
    // Call the functions to give and accept gifts
    acceptGift(name1, gift1); 
    acceptGift(name2, gift2);
    giveGift(name1, gift2);
    giveGift(name2, gift1);
    
    // Print out a message
    cout << "The gift of giving is a wonderful thing!" << endl;
    
    return 0; // Return 0 to signal no errors
}