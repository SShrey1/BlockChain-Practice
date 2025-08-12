// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/v4.9.0/contracts/access/Ownable.sol";

contract VoteToken is ERC20, Ownable {
    uint256 private constant DECIMALS_MULTIPLIER = 10 ** 18;

    constructor(uint256 initialSupply) ERC20("VoteToken", "VOTE") {
        _mint(msg.sender, initialSupply * DECIMALS_MULTIPLIER);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount * DECIMALS_MULTIPLIER);
    }
}
