import java.io.*;
import java.util.*;

public class GiftGiving {

	public static void main(String[] args) {

		// Create an array that will store the gift giver's names.
		String[] giftGivers = new String[20];

		// Create an array that will store the gift recipients' names.
		String[] giftRecipients = new String[20];

		// Create an array that will store the gift details.
		String[] giftDetails = new String[20];

		// Create an array that will store the prices of the gifts.
		double[] giftPrices = new double[20];

		// Create a Scanner to get input from the console.
		Scanner input = new Scanner(System.in);

		// Prompt the user to enter the details of the gifts.
		System.out.println("Please enter the gift giver's name, the gift recipient's name, the gift details, and the price of the gift.");

		// Loop 20 times to get the gift details.
		for (int i = 0; i < 20; i++) {
			// Get the gift giver's name.
			System.out.print("Gift giver's name: ");
			giftGivers[i] = input.nextLine();

			// Get the gift recipient's name.
			System.out.print("Gift recipient's name: ");
			giftRecipients[i] = input.nextLine();

			// Get the gift details.
			System.out.print("Gift details: ");
			giftDetails[i] = input.nextLine();

			// Get the price of the gift.
			System.out.print("Gift price: ");
			giftPrices[i] = input.nextDouble();

			// Go to the next line.
			System.out.println();
		}

		// Print out the details of the gifts.
		System.out.println("Gift Details:");
		for (int i = 0; i < 20; i++) {
			System.out.println(giftGivers[i] + " gave " + giftRecipients[i] + " a " + giftDetails[i] + " for $" + giftPrices[i]);
		}

		// Calculate the total amount spent on gifts.
		double total = 0.0;
		for (int i = 0; i < 20; i++) {
			total += giftPrices[i];
		}
		System.out.println("The total amount spent on gifts is $" + total);

		// Close the Scanner.
		input.close();

	}

}