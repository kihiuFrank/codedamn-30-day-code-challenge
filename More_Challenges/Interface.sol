// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

interface ISwitch {
    function switchOn() external pure returns (uint);

    function switchOff() external pure returns (uint);
}

//create Bulb contract here
contract Bulb is ISwitch {
    function switchOn() external pure returns (uint) {
        return 1;
    }

    function switchOff() external pure returns (uint) {
        return 0;
    }
}
