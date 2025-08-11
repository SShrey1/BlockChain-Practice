// SPDX-License-Identifier: MIT

pragma solidity ^0.8.17;

contract HelloBlockChain{
    string public message;
    address public owner;

    event MessageUpdated(address indexed updater, string oldMessage, string newMessage);

    constructor(string memory initialMessage){
        message = initialMessage;
        owner = msg.sender;
    }

    // Anyone can call to update the message
    function setMessage(string calldata newMessage) external {
        string memory old = message;
        message = newMessage;
        emit MessageUpdated(msg.sender, old, newMessage);
    }

    // Read the current message
    function getMessage() external view returns( string memory){
        return message;
    }

    // Owner only update
    function updateMessageIfOwner(string calldata newMessage) external {
        require(msg.sender == owner, "Only owner can update");
        string memory old = message;
        message = newMessage;
        emit MessageUpdated(msg.sender, old, newMessage);
    }
}