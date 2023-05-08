// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

contract ComputerCompany {
    Desktop[] public desktop;

    constructor() {}

    function create() public {
        // creating a new Desktop object to use functions in the
        // Desktop contract in our ComputerCompany contract
        desktop.push(new Desktop());

        // if you created the object like shown below,
        // you wouldn't be able to track the created objects to know how many were created etc. So you use a dynamic array so you can track

        // Desktop desktop = new Desktop();
    }
}

contract Desktop {
    constructor() {}
}
