//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract DynamicArray {
    uint[] public arr;

    function insertElement(uint a) public {
        arr.push(a);
    }

    function getElement(uint i) public view returns (uint) {
        if (i < arr.length) {
            return arr[i];
        } else {
            return 0;
        }
    }
}
