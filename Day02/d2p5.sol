// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract SwapVariables {
    
    uint256 public a;
    uint256 public b;

    constructor(uint256 _a, uint256 _b) {
        a = _a;
        b = _b;
    }

    // Swap using a third variable
    function swapWithThirdVariable() public {
        uint256 temp = a;  // Store value of a in temp
        a = b;             // Assign value of b to a
        b = temp;          // Assign value of temp (original a) to b
    }

    // Swap without using a third variable
    function swapWithoutThirdVariable() public {
        a = a + b;         // Step 1: a = a + b
        b = a - b;         // Step 2: b = a - b (now b becomes the original a)
        a = a - b;         // Step 3: a = a - b (now a becomes the original b)
    }
}
