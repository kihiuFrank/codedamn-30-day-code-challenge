//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract FixedSizeArray {
    bytes1 b1 = "a";

    function setBytesArray(bytes1 _b1) public {
        b1 = _b1;
    }

    function getByteValue() public view returns (bytes1) {
        return b1;
    }
}
