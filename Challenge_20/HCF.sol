// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day3 {
    function hcf(uint num1, uint num2) public pure returns (uint) {
        /* uint hcfNum;
        if (num1%hcfNum == 0 && num2%hcfNum == 0) {
            return hcfNum;
        }
        require(num1%hcfNum == 0 && num2%hcfNum == 0, "Not a HCF");
        return hcfNum; */
        if (num2 == 0) {
            return num1;
        }
        return hcf(num2, num1 % num2);
    }
}
