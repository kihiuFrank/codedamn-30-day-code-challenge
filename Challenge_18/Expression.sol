// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day1 {
    function expression(uint x, uint n) public pure returns (uint) {
        uint256 sum = 1;
        uint256 m = 1;
        for (uint256 i = 1; i <= n; i++) {
            m = m * x;
            sum = sum + m;
        }
        return sum;
    }
}
