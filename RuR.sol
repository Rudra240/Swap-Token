// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract RuR is ERC20 {


    constructor(string memory name, string memory symbol) ERC20(name, symbol) {
        //mint 100 tokens to msg.sender
        //similar to how 1 dollar = 100 cents
        //1 token = 1 * (10 ** decimals)

        // Mint 100 tokens with 18 decimals

        _mint(msg.sender, 100 * 10**uint256(decimals()));
    }
}