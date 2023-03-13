//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Escrow {
    address payer;
    address payable payee; // payee is payable coz we are releasing ether to them
    address thirdParty;
    uint256 amount;

    constructor(address _payer, address payable _payee, uint256 _amount) {
        payer = _payer;
        payee = _payee;
        amount = _amount;
        thirdParty = msg.sender;
    }

    function deposit() public payable {
        require(payer == msg.sender, "Sender must be the payer");

        require(
            address(this).balance <= amount,
            "Cant send more than escrow amount"
        );
    }

    function release() public {
        require(
            address(this).balance == amount,
            "cannot release funds before full amount is sent"
        );

        require(thirdParty == msg.sender, "only thirdParty can release funds");

        payable(payee).transfer(amount);
    }

    function balanceOf() public view returns (uint256) {
        return address(this).balance;
    }
}
