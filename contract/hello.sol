// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract HelloWorld {
    // Variable to store the message
    string public message;

    // Owner of the contract (only they can update the message)
    address public owner;

    // Constructor: runs only once, when contract is deployed
    constructor() {
        message = "Hello World!";
        owner = msg.sender; // The address that deployed the contract
    }

    // Function to update the message (only owner)
    function setMessage(string memory newMessage) public {
        require(msg.sender == owner, "Only the owner can change the message");
        message = newMessage;
    }

    // Function to read the message (optional, since 'message' is public)
    function getMessage() public view returns (string memory) {
        return message;
    }
}

