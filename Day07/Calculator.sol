// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

library MathLibrary {
    function add(int a, int b) public pure returns (int) {
        return a + b;
    }
    function subtract(int a, int b) public pure returns (int) {
        return a - b;
    }
    function multiply(int a, int b) public pure returns (int) {
        return a * b;
    }
    function divide(int a, int b) public pure returns (int) {
        require(b != 0, "Division by zero");
        return a / b;
    }
    function mod(int a, int b) public pure returns (int) {
        require(b != 0, "Modulo by zero");
        return a % b;
    }
    function sqrt(uint256 a) public pure returns (uint256) {
        uint256 x = a;
        uint256 y = (x + 1) / 2;
        while (y < x) {
            x = y;
            y = (x + a / x) / 2;
        }
        return x;
    }
    function abs(int a) public pure returns (int) {
        return a >= 0 ? a : -a;
    }
    function power(uint256 a, uint256 b) public pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 0; i < b; i++) {
            result *= a;
        }
        return result;
    }
}
