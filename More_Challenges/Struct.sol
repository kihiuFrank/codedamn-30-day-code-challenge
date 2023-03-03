// SPDX-License-Identifier: MIT
pragma solidity >=0.5.0 <0.9.0;

contract Structure {
    struct USER {
        uint id;
        string name;
    }

    USER[] public user;
    uint public counter = 1;

    function insert(string memory _name) public {
        user.push(USER(counter, _name));
        counter++;
    }

    function read(uint id) public view returns (uint, string memory) {
        uint i = find(id);
        return (user[i].id, user[i].name);
    }

    function find(uint id) internal view returns (uint) {
        //require(user, "User does not exist!");
        for (uint i = 0; i < user.length; i++) {
            if (user[i].id == id) {
                return i;
            } else {
                revert("User does not exist!");
            }
        }
    }
}
