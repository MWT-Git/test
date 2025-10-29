# 🌍 HelloWorld Smart Contract

A simple and beginner-friendly Solidity smart contract that stores and updates a message on the Ethereum blockchain.

---

## 📖 Project Description

This project demonstrates the **basics of smart contract development** using Solidity.  
It introduces essential concepts like **state variables**, **ownership**, **constructor functions**, and **access control**.

If you’re just getting started with blockchain development, this is a perfect first project to understand how contracts store data and interact with users.

---

## ⚙️ What It Does

The **HelloWorld** contract allows you to:
1. Store a default message (`"Hello World!"`).
2. Update that message — but only if you're the **owner** (the address that deployed the contract).
3. Retrieve the message stored on the blockchain at any time.

It’s a great introduction to how decentralized applications (dApps) handle simple data storage securely.

---

## ✨ Features

- 🧱 **Simple & Clean Code:** Easy to read and understand for new developers.  
- 🔒 **Ownership Protection:** Only the deployer (owner) can update the message.  
- 🚀 **Upgradeable Message:** Change your message anytime (if you’re the owner).  
- 🌐 **Transparent Storage:** The message is visible publicly on the blockchain.  
- ⚡ **Beginner Friendly:** Focused on clarity, not complexity.

---

## 🔗 Deployed Smart Contract

**Contract Address:** `XXX`  
*(Replace with your deployed contract link once available)*

---

## 🧠 Smart Contract Code

```solidity
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
