[![License: MIT](https://img.shields.io/badge/License-MIT-green.svg)](LICENSE)
[![Base mainnet](https://img.shields.io/badge/Base-deployed-blue)](https://basescan.org/address/0xBB81C40eFe9BFcae6EE8B81383A88Bb2A4d04D0d)
[![Celo mainnet](https://img.shields.io/badge/Celo-deployed-gold)](https://celoscan.io/address/0xfe1ee5f62BA11f283FB9678D10aaA196e3EB331f)

# Multichain Counter — Base & Celo (mainnet, Remix)

Ultra-minimal Solidity **Counter** deployed on **Base mainnet** and **Celo mainnet** using **Remix + MetaMask**.  
Verification via **Sourcify** (automatic) or manual **Single file** verification on the explorers.

## Contract

```solidity
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Counter {
    uint256 public value;
    event Increment(address indexed by, uint256 newValue);
    function increment(uint256 x) external {
        value += x;
        emit Increment(msg.sender, value);
    }
}
````

Deployments

Base (mainnet)

Contract: 0xBB81C40eFe9BFcae6EE8B81383A88Bb2A4d04D0d

Explorer: https://basescan.org/address/0xBB81C40eFe9BFcae6EE8B81383A88Bb2A4d04D0d

Tx increment(1): 0x507fcca75166d11c8c1007356f07358b385f5589400e8209205c5c207488f542
→ https://basescan.org/tx/0x507fcca75166d11c8c1007356f07358b385f5589400e8209205c5c207488f542

Celo (mainnet)

Contract: 0xfe1ee5f62BA11f283FB9678D10aaA196e3EB331f

Explorer: https://celoscan.io/address/0xfe1ee5f62BA11f283FB9678D10aaA196e3EB331f

Tx increment(1): 0x33f6985005ca9d3abdfba6a140a69028758de4e47f61de0247bd45cb843185b3
→ https://celoscan.io/tx/0x33f6985005ca9d3abdfba6a140a69028758de4e47f61de0247bd45cb843185b3

EOA used on both chains: 0x65a4b717D9950CC364aA37a89a78c2beF3559200

Reproduce in 1 minute (Remix)

Open https://remix.ethereum.org
 → create contracts/Counter.sol with the code above.

Compile Solidity 0.8.20, Optimizer ON (200).

Deploy & Run → Injected Provider – MetaMask → select Base → Deploy → confirm.

Call increment(1) → confirm → read value() (should be 1).

Switch to Celo → Deploy → increment(1) → read value().

Contract verification

Sourcify (Remix Sourcify plugin), or

Explorer → Verify & Publish → Single file

Compiler: 0.8.20

Optimizer: Yes, runs 200

Constructor args: none

Paste Counter.sol exactly as above
