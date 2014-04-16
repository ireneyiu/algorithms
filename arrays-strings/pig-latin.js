// Pseudocode:
// Covert input string to array
// Create array for vowels
// Loop through each character in string array
// If current character is not in the vowels array, splice at that index
// Append the latter half + former half + "ay"
// Return the string

function pigLatin(string) {
  var vowels = ["a", "e", "i", "o", "u"];
  var letters = string.split("");
  var splitIndex = -1;
  for (var i = 0; i < letters.length; i++) {
    if (vowels.indexOf(letters[i]) === -1) {
      splitIndex = i;
      break;
    }
  }
  return string.substring(splitIndex + 1, string.length) + string.substring(0, splitIndex + 1) + "ay";
}

console.log(pigLatin("pig"));
console.log(pigLatin("banana"));