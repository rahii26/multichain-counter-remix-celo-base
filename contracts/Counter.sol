// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;
contract Counter {
    uint256 public value;
    event Increment(address indexed by, uint256 newValue);
    function increment(uint256 x) external { value += x; emit Increment(msg.sender, value); }
}
