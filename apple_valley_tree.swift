// MARK: The Gift of Giving 
import Foundation

// Calculate donations
// This function calculates the amount of donations based on the total cost of the item
func calculateDonations(itemCost: Double) -> Double {
    return itemCost * 0.1
}

// Create struct for donation
struct Donation {
    var itemCost: Double
    var donations: Double
    
    var totalCost: Double {
        return itemCost + donations
    }
}

// Create example donation
var exampleDonation = Donation(itemCost: 50.00, donations: calculateDonations(itemCost: 50.00))

// Calculate savings
// This function calculates the amount of savings the donor has received
func calculateSavings(itemCost: Double, donations: Double) -> Double {
    let totalCost = itemCost + donations
    let savings = totalCost * 0.2
    return savings
}

// Create example savings
let exampleSavings = calculateSavings(itemCost: 50.00, donations: calculateDonations(itemCost: 50.00))

// Print results
print("Your donation has saved \(exampleSavings) dollars.")

// Create donor
struct Donor {
    var name: String
    var amount: Double
    
    // Create method to thank donors
    func thankDonor() -> String {
        return "Thank you, \(name), for your generous donation of $\(amount)!"
    }
}

// Create example donor
let exampleDonor = Donor(name: "John Smith", amount: exampleDonation.donations)

// Print thank you message
print(exampleDonor.thankDonor())

// Create array of donations
var donations = [Donation]()

// Create donations
let firstDonation = Donation(itemCost: 25.00, donations: calculateDonations(itemCost: 25.00))
let secondDonation = Donation(itemCost: 25.00, donations: calculateDonations(itemCost: 25.00))

// Append donations to array
donations.append(firstDonation)
donations.append(secondDonation)

// Calculate total contribution
func calculateTotalContribution(donations: [Donation]) -> Double {
    var totalContribution = Double()
    for donation in donations {
        totalContribution += donation.totalCost
    }
    return totalContribution
}

// Print total contribution
let totalContribution = calculateTotalContribution(donations: donations)
print("Your total contribution is $\(totalContribution).")

// Calculate total savings
func calculateTotalSavings(donations: [Donation]) -> Double {
    var totalSavings = Double()
    for donation in donations {
        totalSavings += calculateSavings(itemCost: donation.itemCost, donations: donation.donations)
    }
    return totalSavings
}

// Print total savings
let totalSavings = calculateTotalSavings(donations: donations)
print("Your total savings are $\(totalSavings).")

// Create array of donors
var donors = [Donor]()

// Create donors
let firstDonor = Donor(name: "Matthew Johnson", amount: firstDonation.donations)
let secondDonor = Donor(name: "James Williams", amount: secondDonation.donations)

// Append donors to array
donors.append(firstDonor)
donors.append(secondDonor)

// Print thank you messages
for donor in donors {
    print(donor.thankDonor())
}

// Create struct for charity
struct Charity {
    var name: String
    let donationsReceived: Double
    
    // Create method for charity to show appreciation
    func showAppreciation() -> String {
        return "Thank you for your generous donations of $\(donationsReceived) to \(name)!"
    }
}

// Create example charity
let exampleCharity = Charity(name: "The Red Cross", donationsReceived: totalContribution)

// Print charity appreciation message
print(exampleCharity.showAppreciation())