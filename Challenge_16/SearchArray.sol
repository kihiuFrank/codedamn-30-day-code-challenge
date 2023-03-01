// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
    function search(
        uint[] memory arr,
        uint len,
        uint a
    ) public pure returns (uint) {
        uint i;
        for (i = 0; i < len; i++) {
            if (arr[i] == a) {
                return 1;
            }
        }
        return 0;
    }
}
