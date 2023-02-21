// SPDX-License-Identifier: aIT
pragma solidity >=0.5.0 <0.9.0;

contract day1 {
    function digitSum(int n) public pure returns (int) {
        int remainder;
        int sum = 0;
        //for (digit in string(n)) {
        //    sum += int(digit);
        //}
        //return sum;

        while (n > 0) {
            remainder = n % 10;
            sum = sum + remainder;
            n = n / 10;
        }
        return sum;
    }
}
