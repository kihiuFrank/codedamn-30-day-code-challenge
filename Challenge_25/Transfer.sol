//SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.5.0 <0.9.0;

contract Day4 {
    address owner;

    constructor() {
        owner = msg.sender;
    }

    function send(address[] memory _to, uint[] memory _amounts) public payable {
        // can only be called by owner of the contract
        require(owner == msg.sender, "you are not the owner");

        // check if both arrays have the same length
        require(
            _to.length == _amounts.length,
            "to must be same length as amount"
        );

        // transfer amount in _amounts[i] to _to[i]
        for (uint i = 0; i < _amounts.length; i++) {
            payable(_to[i]).transfer(_amounts[i]);
        }
    }
}
