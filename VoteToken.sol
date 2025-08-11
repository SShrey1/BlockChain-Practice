pragma solidity ^0.8.17;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contact VoteToken is ERC20, Ownable {
    constructor(uint256 initialSupply) ERC20
}