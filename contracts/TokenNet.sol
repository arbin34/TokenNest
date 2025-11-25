// SPDX-License-Identifier: MIT
// Commit: feat: improved TokenNest with event logging and access modifier
// improved TokenNest everyday 

pragma solidity ^0.8.17;

/**
 * @title TokenNest
 * @notice Minimal and gas-efficient smart contract with owner-restricted setter.
 */
contract TokenNest {
    address public owner;

    // Stored private data
    string private data;

    // Event emitted on data update
    event DataUpdated(string newData, address updatedBy);

    constructor() {
        owner = msg.sender;
    }

    // Modifier for owner-only access
    modifier onlyOwner() {
        require(msg.sender == owner, "Not owner");
        _;
    }

    // Set the data (only accessible by contract owner)
    function setData(string calldata _data) external onlyOwner {
        data = _data;
        emit DataUpdated(_data, msg.sender);
    }

    // Retrieve stored data
    function getData() external view returns (string memory) {
        return data;
    }
}
