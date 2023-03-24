// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day2 {
    /*  function secondMax(int[] memory array, uint len) public pure returns (int) {
        for (uint j = 0; j < len - 1; j++) {
            int swapped = 0;
            for (uint i = j + 1; i < len - 1; i++) {
                int temp;
                if (array[i + 1] > array[i]) {
                    //swapping
                    temp = array[i]; // temporary store the value of the smaller number
                    array[i] = array[i + i]; // swap the larger value to the position of the smaller one
                    array[i + 1] = temp; // replace the smaller one with the larger one
                    swapped == 1;
                }
            }

            // if no elements are swapped
            // that means our array is sorted
            if (swapped == 0) {
                break;
            }
        }
        return array[1];
    } */

    function secondMax(
        int256[] memory arr,
        uint256 size
    ) public pure returns (int256) {
        for (uint256 i = 0; i < size - 1; i++) {
            for (uint256 j = i + 1; j < size; j++) {
                if (arr[i] < arr[j]) {
                    int256 temp = arr[i];
                    arr[i] = arr[j];
                    arr[j] = temp;
                }
            }
        }

        return arr[1];
    }
}
