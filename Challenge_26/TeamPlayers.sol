//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Day5 {
    // create an array which stores addresses of the team players.
    address[16] arr;

    function getTeamPlayers() public view returns (address[16] memory) {
        return arr;
    }

    function selectJerseyNumber(uint a) public view returns (address) {
        require(a >= 0 && a <= 15, "value not in array");
        return arr[a];
    }
}
