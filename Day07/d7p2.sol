// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;


import "./Calculator.sol";

contract d7p2 {
    function verifyAdd(int a, int b) public pure returns (int) {
        return Calculator.add(a, b);
    }
    function verifySubtract(int a, int b) public pure returns (int) {
        return Calculator.subtract(a, b);
    }
    function verifyMultiply(int a, int b) public pure returns (int) {
        return Calculator.multiply(a, b);
    }
    function verifyDivide(int a, int b) public pure returns (int) {
        return Calculator.divide(a, b);
    }
    function verifyMod(int a, int b) public pure returns (int) {
        return Calculator.mod(a, b);
    }
    function verifySqrt(uint256 a) public pure returns (uint256) {
        return Calculator.sqrt(a);
    }
    function verifyAbs(int a) public pure returns (int) {
        return Calculator.abs(a);
    }
    function verifyPower(uint256 a, uint256 b) public pure returns (uint256) {
        return Calculator.power(a, b);
    }
}
