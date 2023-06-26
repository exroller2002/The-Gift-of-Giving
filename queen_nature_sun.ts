// The Gift of Giving - A Typescript Program

// Declare function for calculating amount of gift given
function calculateGift(person: number): number {
  let amount;

  if (person < 10) {
    amount = 10;
  } else if (person >= 10 && person < 20) {
    amount = 15;
  } else if (person >= 20 && person < 30) {
    amount = 20;
  } else if (person >= 30 && person < 40) {
    amount = 25;
  } else if (person >= 40 && person < 50) {
    amount = 30;
  } else if (person >= 50 && person < 60) {
    amount = 35;
  } else if (person >= 60 && person < 70) {
    amount = 40;
  } else if (person >= 70 && person < 80) {
    amount = 45;
  } else if (person >= 80 && person < 90) {
    amount = 50;
  } else {
    amount = 60;
  }
  return amount;
}

// Declare function for displaying gift given
function displayGift(person: number): void {
  let amount = calculateGift(person);

  console.log(
    `For ${person.toString()} people, the gift to give is ${amount.toString()}!`
  );
}

// Test the function
displayGift(35); // For 35 people, the gift to give is 25!

// Declare function for calculating total cost of gift giving
function totalCost(persons: number[]): number {
  let cost = 0;

  for (let i = 0; i < persons.length; i++) {
    cost += calculateGift(persons[i]);
  }
  return cost;
}

// Test the function
console.log(
  `The total cost of gift giving for a group of 10, 20, 50, and 65 people is ${totalCost(
    [10, 20, 50, 65]
  )}!`
); // The total cost of gift giving for a group of 10, 20, 50, and 65 people is 160!

// Declare function for calculating remaining budget for gift giving
function remainingBudget(persons: number[], budget: number): number {
  let cost = totalCost(persons);
  return budget - cost;
}

// Test the function
console.log(
  `The remaining budget for a group with a budget of 200 and 10, 20 and 50 people is ${remainingBudget(
    [10, 20, 50],
    200
  )}!`
); // The remaining budget for a group with a budget of 200 and 10, 20 and 50 people is 5!

// Declare function for finding total number of people to reach budget
function findPersons(budget: number): number[] {
  let persons: number[] = [];

  for (let i = 0; i < 90; i++) {
    persons.push(i);
    if (totalCost(persons) > budget) {
      persons.pop();
      return persons;
    }
  }

  return persons;
}

// Test the function
console.log(
  `The total number of people to reach a budget of 180 is ${findPersons(
    180
  )}!`
); // The total number of people to reach a budget of 180 is [ 0, 10, 20, 30, 40, 50, 60, 70, 80 ]!