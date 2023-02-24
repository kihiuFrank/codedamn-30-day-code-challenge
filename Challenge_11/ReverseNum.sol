// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day6 {
    function reverseDigit(uint n) public pure returns (uint) {
        uint remainder;
        uint newNum;

        // get the reverse of n
        // store it in variable newNum
        while (n != 0) {
            remainder = n % 10;
            newNum = newNum * 10 + remainder;
            n /= 10;
        }
        return newNum;
    }
}
