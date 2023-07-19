#include <stdio.h>
#include <string.h>

int main() 
{
	char message[256];
	
	// Introductory message
	printf("Welcome to 'The Gift of Giving'!\n\n");
	
	printf("Please enter a message to share with the world:\n");
	scanf("%255s", &message);
	
	// Iterate through the message
	int letter;
	for (letter = 0; letter < strlen(message); letter++) {
		
		// Uppercase and print out the character
		printf("%c", toupper(message[letter]));
		
		// Wait for 1/4 of a second
		usleep(250000);
	}

	// Print a blank line
	printf("\n\n");

	// Print out a message of encouragement
	printf("Thank you for giving the gift of giving!\n\n");
	
	return 0;
}