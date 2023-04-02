// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Day3 {
    mapping(address => uint256) balances;

    function updateBalance(uint balance) public {
        balances[msg.sender] = balance;
    }

    function checkBalance(address user) public view returns (uint) {
        // user can only check their own balance else revert with "You are not the owner of the account"
        require(user == msg.sender, "You are not the owner of the account");

        // return balance of user
        return balances[user];
    }
}
