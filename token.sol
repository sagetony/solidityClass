// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.10;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.0.0/contracts/token/ERC20/ERC20.sol";

contract kusuToken is ERC20{
    constructor(string memory name, string memory symbol)
        ERC20(name,symbol){
                // ERC20 token have 18 decimals
                // number of token minted = n*10^18

                uint256 n =200000;
                _mint(msg.sender, n * 10**uint(decimals()));
    }
}