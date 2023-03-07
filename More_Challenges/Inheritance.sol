// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

// parent contract
contract Parent {
    int public a;

    function increment() public {
        a = a + 1;
    }
}

//Create Child Contract
contract Child is Parent {
    function decrement() public {
        a = a - 1;
    }
}
