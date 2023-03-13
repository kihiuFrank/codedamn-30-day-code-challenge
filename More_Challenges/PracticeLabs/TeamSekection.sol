//SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.5.0 <0.9.0;

contract Team {
    address[16] team;

    function getTeamPlayers() public view returns (address[16] memory) {
        return team;
    }

    function selectJerseyNumber(uint playerId) public returns (uint) {
        require(
            playerId >= 0 && playerId <= 15,
            "argument passed into the function must be greater than equal to zero and less than equal to 15"
        );

        team[playerId] = msg.sender;

        return playerId;
    }
}
