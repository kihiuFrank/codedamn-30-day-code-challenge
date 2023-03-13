// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Fibonacci {
    function fib(uint n) public pure returns (uint) {
        // Recursion Method
        /* if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        } else {
            for (uint i = 2; i <= n; i++) {
                return fib(n - 1) + fib(n - 2);
            }
        } */

        // Dynamic Programming Method
        /* uint[] memory arr;
        arr[0] = 0;
        arr[1] = 1;

        for (uint i = 2; i <= n; i++) {
            arr[i] = arr[i - 1] + arr[i - 2];
        }
        return arr[n]; */

        // Space Optimized Method
        if (n == 0) {
            return 0;
        }
        uint256 a = 1;
        uint256 b = 1;
        for (uint256 i = 2; i < n; i++) {
            uint256 c = a + b;
            b = a;
            a = c;
        }
        return a;
    }
}
