// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

library MathLibrary {
    function max(uint256 a, uint256 b) public pure returns (uint256) {
        return a > b ? a : b;
    }

    // Function to find the minimum of two numbers
    function min(uint256 a, uint256 b) public pure returns (uint256) {
        return a < b ? a : b;
    }

    // Function to calculate factorial of a number
    function factorial(uint256 n) public pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 1; i <= n; i++) {
            result *= i;
        }
        return result;
    }

    // Function to generate the Fibonacci series up to a number 'n'
    function fibonacci(uint256 n) public pure returns (uint256[] memory) {
        uint256[] memory fibSeries = new uint256[](n);
        fibSeries[0] = 0;
        if (n > 1) {
            fibSeries[1] = 1;
        }
        for (uint256 i = 2; i < n; i++) {
            fibSeries[i] = fibSeries[i - 1] + fibSeries[i - 2];
        }
        return fibSeries;
    }

    // Function to check if a number is Armstrong number
    function isArmstrong(uint256 num) public pure returns (bool) {
        uint256 originalNum = num;
        uint256 sum = 0;
        uint256 digits = 0;
        
        // Find the number of digits in the number
        while (num != 0) {
            digits++;
            num /= 10;
        }
        
        num = originalNum;
        // Check if the number is Armstrong
        while (num != 0) {
            uint256 digit = num % 10;
            sum += digit ** digits;
            num /= 10;
        }
        
        return sum == originalNum;
    }
}

// Contract to use the MathLibrary functions
contract MathContract {
    
    // Using the MathLibrary
    using MathLibrary for uint256;

    // Function to get max of two numbers
    function getMax(uint256 a, uint256 b) public pure returns (uint256) {
        return a.max(b);
    }

    // Function to get min of two numbers
    function getMin(uint256 a, uint256 b) public pure returns (uint256) {
        return a.min(b);
    }

    // Function to calculate factorial of a number
    function getFactorial(uint256 n) public pure returns (uint256) {
        return n.factorial();
    }

    // Function to get Fibonacci series up to a number 'n'
    function getFibonacci(uint256 n) public pure returns (uint256[] memory) {
        return n.fibonacci();
    }

    // Function to check if a number is Armstrong
    function checkArmstrong(uint256 num) public pure returns (bool) {
        return num.isArmstrong();
    }
}
