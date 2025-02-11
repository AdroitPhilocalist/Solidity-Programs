//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract SimpleCalculator {
    
    int256 constant SCALE = 10**18;
    function calculate(int256 num1, int256 num2, uint256 operator) public pure returns (int256 result) {
        if (operator == 1) {
            result = num1 + num2;
        }
        else if (operator == 2) {
            result = num1 - num2;
        }
        else if (operator == 3) {
            result = num1 * num2;
        }
        else if (operator == 4) {
            result = (num1 * SCALE) / num2;
        }
    }
}
