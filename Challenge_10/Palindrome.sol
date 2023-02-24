// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
    function palindrome(uint n) public pure returns (uint) {
        uint remainder;
        uint newNum;

        // store the number to originalNum
        uint originalNum = n;

        // get the reverse of originalNum
        // store it in variable
        while (n != 0) {
            remainder = n % 10;
            newNum = newNum * 10 + remainder;
            n /= 10;
        }

        // Comparing the originalNum to the newNum
        if (originalNum == newNum) {
            return 1; // it's a palindrome
        } else {
            return 0; // it's not a palindrome
        }
    }
}
