// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day3 {
    function prime(uint n) public pure returns (uint) {
        require(n > 1, "A prime number is a whole number greater than 1");
        for (uint i = 2; i < n; i++) {
            if (n % i == 0) {
                return 0;
            } else {
                return 1;
            }
        }
    }
}
