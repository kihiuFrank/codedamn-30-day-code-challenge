//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Day6 {
    function concatenate(
        string memory a,
        string memory b
    ) public pure returns (string memory) {
        return string(abi.encodePacked(a, b));

        //OR
        // return string(bytes.concat(bytes(a), bytes(b)));
    }
}
