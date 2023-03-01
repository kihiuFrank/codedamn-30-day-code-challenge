// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    function distinct(uint[] memory arr, uint len) public pure returns (uint) {
        //uint[] newArr;
        uint count = 1;
        uint i;
        uint j;
        for (uint i = 1; i < len; i++) {
            //loop to check previous elements
            for (uint j = 0; j < i; j++) {
                if (arr[i] == arr[j]) {
                    //newArr.push(uint[i]);
                    break;
                }
            }
            if (i == j) {
                count++;
            }
        }
        return count;
    }
}
