/*
Lisa Stephens javascript solution for Euler Project problem 1:

Multiples of 3 and 5
Problem 1
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.

result is 233168
completed on 6/18/2014
*/

// initialize totalSum
var totalSum = 0;
var ceiling = 1000;

// Go through every number from 1 to 999
for (var i = 0; i < ceiling; i++) {
	// first, see if i is a multiple of 3. If so, add to totalSum
	if (i%3 === 0) {
		totalSum += i;
	} else if (i%5 == 0){
		totalSum += i;
	};
}
console.log("The sum for all the multiples of 3 or 5 below " + ceiling + " is: " + totalSum);
	