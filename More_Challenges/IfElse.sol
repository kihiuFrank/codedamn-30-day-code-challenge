pragma solidity >=0.5.0 <0.9.0;

// SPDX-License-Identifier: MIT

contract IfElse {
    function checkEvenOdd(int a) public pure returns (string memory) {
        if (a < 0) {
            return "Please enter a positive number";
        }

        if (a > 0 && a % 2 == 0) {
            return "Number is even";
        }

        if (a > 0 && a % 2 == 1) {
            return "Number is odd";
        }
    }
}
