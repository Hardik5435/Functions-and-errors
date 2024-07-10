// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Banker {
    string public name= "Tomato";
    uint public balance = 100;
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    function benegative(uint value) public {
        require(value < 0, "Value must be less than zero");
        balance = value;
    }

    function checkOwner() public view {
        assert(msg.sender == owner);
    }

    function setevalue(uint equityvalue) public {
        require(equityvalue > 0, "Value must be greater than zero");
        balance = equityvalue;
    }

    function resetbalance() public {
        if (msg.sender != owner) {
            revert("Only Owner can reset the balance");
        }
        balance = 0;
    }
}

