// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day6 {
    function sumarray(int[] memory arr, uint len) public pure returns (int) {
        int sum = 0; // initialize sum

        // Iterate through all elements
        // and add them to sum
        for (uint i = 0; i < len; i++) {
            sum += arr[i];
        }
        return sum;
    }
}
