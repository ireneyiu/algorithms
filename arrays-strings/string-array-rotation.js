// Now I have an array of words that are mostly alphabetical, except they start somewhere in the middle of the alphabet, reach the end, and then start from the beginning of the alphabet.
// In other words, this is an alphabetically ordered array that has been "rotated."
// Write a function for finding the "rotation point," which is where I started working from the beginning of the dictionary.
// This array is huge (there are lots of words I don't know) so we want to be efficient here.

// Example:
// ["cat", "dog", "elephant", "antelope", "bear"]

// Rotation point: "antelope" (3)
// low: 0, high: 4
// low: 2, high: 4
// low: 2, high: 3
// 
// // Example:
// ["elephant", "antelope", "bear", "cat", "dog"]

// Rotation point: "antelope" (1)
// low: 0, high: 4
// low: 0, high: 2
// low: 2, high: 3

// Pseudocode
// Input: array, low, high
// Set default values if necessary
// until array[low] > array[high]
// Calculate the middle: array[Math.floor(high-low/2)]
// If num < mid, set high as mid-1 and recurse
// If num > mid, set low as mid+1 and recurse
// Return array[high]

function rotationPoint(array, low_bound, high_bound) {
  var low = low_bound || 0;
  var high = high_bound || array.length-1;

  if ((high-low) === 1) {
    return (array[high] < array[low]) ? array[high] : array[low];
  }
  var mid = Math.floor((high-low)/2) + low;
  if (array[high] < array[mid]) {
    return rotationPoint(array, mid+1, high);
  }
  if (array[mid] < array[low]) {
    return rotationPoint(array, low, mid-1);
  }
}

console.log(rotationPoint(["cat", "dog", "elephant", "antelope", "bear"]));
console.log(rotationPoint(["elephant", "antelope", "bear", "cat", "dog"]));

