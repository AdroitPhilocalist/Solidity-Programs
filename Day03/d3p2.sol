//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract MaxMinCalculator {

    // Function to find the maximum of three numbers
    function findMax(int256 num1, int256 num2, int256 num3) public pure returns (int256) {
        int256 max = num1;
        
        if (num2 > max) {
            max = num2;
        }
        if (num3 > max) {
            max = num3;
        }
        
        return max;
    }

    // Function to find the minimum of three numbers
    function findMin(int256 num1, int256 num2, int256 num3) public pure returns (int256) {
        int256 min = num1;
        
        if (num2 < min) {
            min = num2;
        }
        if (num3 < min) {
            min = num3;
        }
        
        return min;
    }
}