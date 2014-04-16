function binarySearch(array, number, low_index, high_index) {
  var high = high_index || array.length-1;
  var low = low_index || 0;
  var midIndex = Math.floor((high - low)/2) + low;
  var mid = array[midIndex];

  if (low > high) {
    return -1;
  }

  if (number > mid) {
    return binarySearch(array, number, midIndex + 1, high);
  }
  
  if (mid > number) {
    return binarySearch(array, number, low, midIndex - 1);
  }

  return mid;
}

console.log(binarySearch([1,2,3,4,5,6,7,8,9,10], 2));