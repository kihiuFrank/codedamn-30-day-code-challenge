// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

// this code is to demonstarate how you can avoid a re-entrancy attack and it might not complie

contract ReEntrancy {
    address public addr;

    function requestEther() public {
        uint temp = balance[addr]; // store the balance temporary
        balance(addr) = 0; // update balance to zero before transfering

        // to break the loop and avoid spending infinite gas
        // NOTE: Not a verified solution but a possible one.
        assert(balance[addr] == 0);

        // now we can transfer
        addr.transfer(temp);
    }
}
