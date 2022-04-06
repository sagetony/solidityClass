// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract myContract{
    uint public Age;
    string public Name;
    // address immutable public owner;

    constructor(uint _age, string memory _name){
            Age = _age;
            Name = _name;
            // owner = msg.sender;
    }
    function setAge(uint _age) public returns(uint){
        Age = _age;
        return Age;
    }
    function setName(string memory _name) public{
        Name = _name;
    }
} 