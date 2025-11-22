// SPDX-License-Identifier: MIT
// Commit: feat: add TokenNest smart contract with owner-restricted data setter and getter

pragma solidity ^0.8.17;

/**
 * @Title TokenNest
 * @notice Minimal and gas-efficient smart contract for demonstration.
 * describe this project of blockchain daily .
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
