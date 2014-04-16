// "Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing."
// Write a function that, given a sentence like the above, along with the position of an opening parenthesis, finds the corresponding closing parenthesis.
// Example: if the example string above is input with the number 10 (position of the first parenthesis), the output should be 79 (position of the last parenthesis).

// Pseudocode:
// Start from given index
// Traverse string to see how many open parentheses found
// Increment counter of open parentheses 
// When close parentheses found, decrement count of open parentheses until 0
// Return index

function closingParenthesis(string, start) {
  var numOpen = 0;
  var letters = string.split("");
  for (var i = 0; i < letters.length; i++) {
    if (letters[i] === "(") {
      numOpen++;
    } else if (letters[i] === ")") {
      numOpen--;
      if (numOpen === 0) {
        return i;
      }
    }
  }
}

console.log(closingParenthesis("Sometimes (when I nest them (my parentheticals) too much (like this (and this))) they get confusing.", 10));