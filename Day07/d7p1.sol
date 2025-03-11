// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;
import "./Maths.sol";
contract MathContract {
    function getMax(uint256 a, uint256 b) public pure returns (uint256) {
        return Maths.maxof2(a,b);
    }
    function getMin(uint256 a, uint256 b) public pure returns (uint256) {
        return Maths.minof2(a,b);
    }
    function getFactorial(uint256 n) public pure returns (uint256) {
        return Maths.factorial(n);
    }
    function getFibonacci(uint256 n) public pure returns (uint256[] memory) {
        return Maths.fibonacci(n);
    }
    function checkArmstrong(uint256 num) public pure returns (bool) {
        return Maths.isArmstrong(num);
    }
}