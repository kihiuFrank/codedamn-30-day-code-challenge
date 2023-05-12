// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.0;

//company controls all other contract
contract Company {
    // to control all other contracts, we need to get their addresses
    // so we create instances of other conteracts
    mapping(string => address) register;

    function contractCall() public {
        register["HR"] = address(new HR());
        register["CEO"] = address(new CEO());
        register["Manager"] = address(new Manager());

        // to use functions of these contracts we can do something like;
        // register["HR"].example();
    }
}

contract HR {
    function example() public returns (uint) {
        uint a = 8;
        return a;
    }
}

contract CEO {
    constructor() {}
}

contract Manager {
    constructor() {}
}
