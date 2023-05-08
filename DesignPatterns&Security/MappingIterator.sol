// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract MappingIterator {
    mapping(address => uint) values;

    // when you create a mapping remember to create a dynamic array
    // to help keep track of the key values.
    // remember, when you deploy your contract on the blockchain you cannot change it.
    address[] public arr;

    constructor() {}

    function pay(uint _value) public {
        values[msg.sender] = _value;
        arr.push(msg.sender);
    }

    function returnArray() public view returns (address[] memory) {
        return arr;
    }
}
