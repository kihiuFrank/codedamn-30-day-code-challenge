// SPDX-License-Identifier: MIT
pragma solidity >=0.4.22 <0.9.0;

contract Day3 {
    mapping(address => uint256) balanceUpdate;

    function updateBalance(uint _newBalance) public {
        /* address owner = msg.sender;
        uint oldBalance = owner.balance;
        uint newBalance = oldBalance + _newBalance;
        */
        //address owner = msg.sender;
        //payable(owner).transfer(_newBalance);
        balanceUpdate[msg.sender] = _newBalance;
    }

    function checkBalance(address _user) public view returns (uint) {
        require(_user == msg.sender, "You are not the owner of the account");

        return balanceUpdate[_user];
    }
}
