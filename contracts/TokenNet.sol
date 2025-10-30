// SPDX-License-Identifier: MIT
// Commit: feat: add TokenNest smart watch and contract with owner-restricted data setter and getter
pragma solidity ^0.8.17;

/**
 * @title TokenNest
 * @notice Minimal and gas-efficient smart contract for demonstration.
 */

contract TokenNest {
    address public owner;

    constructor() {
        owner = msg.sender;
    }

    // Minimal setter/getter example
    string private data;

    function setData(string calldata _data) external {
        require(msg.sender == owner, "Only owner");
        data = _data;
    }

    function getData() external view returns (string memory) {
        return data;
    }
}
