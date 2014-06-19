/*
Largest prime factor
Problem 3
The prime factors of 13195 are 5, 7, 13 and 29.

What is the largest prime factor of the number 600851475143 ?
*/

//var targetNumber = 600851475143;
var targetNumber = 1146;
var workingTargetNumber = targetNumber;
// Set up array for storing prime factors
var pFactors = new Array();

/* 	Start looking for prime factors, brute force
	Start with 2, since 1 is a factor for every number and isn't 
	listed as a prime factor by convention.
*/
console.log("Starting the for loop.");
for ( var i = 2; i < targetNumber; i++) {
    console.log("in the for loop. targetNumber is " + targetNumber + ". workingTargetNumber=" + workingTargetNumber + ". Number of prime factors found is " + pFactors.length);
    
	while ( workingTargetNumber%i === 0) {
	
		pFactors[pFactors.length] = i;
		workingTargetNumber /= i;

    }
}

// Handle  prime targetNumber 
if (pFactors.length === 0) {
    pFactors[pFactors.length] = targetNumber;
    console.log("Your target number " + targetNumber + " is prime.");
}

console.log("The prime factors of " + targetNumber + " are " + pFactors);
console.log("The largest prime factor is " + pFactors[pFactors.length - 1]);