// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day3 {
    function sort(
        uint[] memory arr,
        uint len
    ) public pure returns (uint[] memory) {
        for (uint i = 0; i < len - 1; ++i) {
            uint swapped = 0;

            for (uint j = 0; j < len - i - 1; ++j) {
                if (arr[j] > arr[j + 1]) {
                    // swapping
                    uint temp = arr[j];
                    arr[j] = arr[j + 1];
                    arr[j + 1] = temp;
                    swapped = 1;
                }
            }
            // if no elements are swapped
            // that means our array is sorted
            if (swapped == 0) {
                break;
            }
        }
        return arr;
    }
}
