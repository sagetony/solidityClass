// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract contractMapping{

    mapping(address => uint) public balance;

    function Payment()payable public{
        balance[msg.sender] = msg.value;
    }
}