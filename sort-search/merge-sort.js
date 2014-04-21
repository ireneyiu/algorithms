function mergeSort(array) {
	console.log(array);
	if (array.length <= 1) {
		return array;
	}
	var mid = Math.floor((array.length)/2);
	var left = mergeSort(array.slice(0, mid));
	var right = mergeSort(array.slice(mid, array.length));
	return merge(left, right);
}

function merge(arr1, arr2) {
	var merged = [];
	while (arr1.length > 0 && arr2.length > 0) {
		if (arr1[0] < arr2[0]) {
			merged.push(arr1.shift());
		} else {
			merged.push(arr2.shift());
		}
	}
	
	if (arr1.length > 0) {
		merged = merged.concat(arr1);
	} else {
		merged = merged.concat(arr2);
	}
	return merged;
}

console.log(mergeSort([2, 8, 1, 9, 3, 4, 6]));