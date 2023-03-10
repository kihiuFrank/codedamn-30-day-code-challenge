// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Wallet {
    address payable public owner;

    constructor(address _owner) {
        owner = payable(_owner);
    }

    function deposit() public payable {}

    function sendEther(address _to, uint _amount) public payable {
        require(msg.sender == owner, "sender is not allowed");
        payable(_to).transfer(_amount);
    }

    function balanceOf() public view returns (uint) {
        return address(this).balance;
    }
}
