// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Function {
    uint stateVal = 10; // state variable

    // state variables are costly because
    // they are permanetly stored on the blockchain.
    // reading is free but writing is costly.

    function returnStateVariable() public view returns (uint) {
        return stateVal;
    }

    function returnLocalVariable() public pure returns (uint) {
        uint localVal = 20; // local variable

        // local variables only exist while the function is running
        // kept on stack not on storage
        // no gas fee as they aren't permanetly stored on chain

        return localVal;
    }
}
