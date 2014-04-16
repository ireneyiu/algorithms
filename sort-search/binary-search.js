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

function binarySearchIterative(array, number) {
  var high = array.length-1;
  var low = 0;
  
  while (low < high) {
    var mid = array[Math.floor((high-low)/2)];
    if (number == mid) {
      return mid;
    }
    if (number > mid) {
      low = mid + 1;
    }
    if (number < mid) {
      high = mid - 1;
    }
  }
  return -1;
}

console.log(binarySearch([1,2,3,4,5,6,7,8,9,10], 2));
console.log(binarySearchIterative([1,2,3,4,5,6,7,8,9,10], 2));