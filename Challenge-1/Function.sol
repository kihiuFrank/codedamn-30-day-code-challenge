// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Function {
    uint localVal = 10;

    function returnStateVariable() public view returns (uint) {
        return localVal;
    }

    function returnLocalVariable() public pure returns (uint) {
        uint stateVal = 20;
        return stateVal;
    }
}
