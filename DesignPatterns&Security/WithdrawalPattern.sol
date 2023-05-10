// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

//senario/Issue
/* When the demo contract trys to send ether by calling send() in the WithdrwalPattern contract, the operation will fail. 
When the execution reaches; (richestPerson.transfer(msg.value);), the fallback method on the demo contract is called since no fuction is called in the contract hence everything reverts 
*/

// Solution
/*
We use a mapping
 */

contract WithdrawalPattern {
    address payable public richestPerson;
    uint max;
    mapping(address => uint) investors;

    constructor() payable {
        richestPerson = payable(msg.sender);
        max = msg.value;

        // richestPerson.transfer(msg.value);
        investors[msg.sender] = msg.value;
    }

    function withdraw() public {
        uint amount = investors[msg.sender];
        investors[msg.sender] = 0;
        payable(msg.sender).transfer(amount);
    }

    function send() public payable {
        require(msg.value > max);
        richestPerson = payable(msg.sender);
        max = msg.value;
        // trasnfer back thier money since we don't need it
        richestPerson.transfer(msg.value);
    }
}

// this contract is just for demo purposes, nothing much is going on.
contract demo is WithdrawalPattern {
    constructor() {}

    function A() public pure returns (uint) {
        uint a = 5;
        return a;
    }

    // function to receive back their ether
    function receiveBack() public {
        withdraw();
    }

    fallback() external payable {
        revert();
    }

    receive() external payable {}
}
