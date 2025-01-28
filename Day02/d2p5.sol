//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract SwapVariables {
    
    uint256 public a;
    uint256 public b;

    function setInput(uint256 _a, uint256 _b)public {
        a = _a;
        b = _b;
    }

    function swapWithThirdVariable() public {
        uint256 temp = a;  
        a = b;             
        b = temp;          
    }

    // Swap without using a third variable
    function swapWithoutThirdVariable() public {
        a = a + b;         
        b = a - b;         
        a = a - b;         
    }
}
