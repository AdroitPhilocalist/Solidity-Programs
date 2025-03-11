// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

library Maths {
    function maxof2(uint256 a, uint256 b) public pure returns (uint256) {
        return a > b ? a : b;
    }
    function minof2(uint256 a, uint256 b) public pure returns (uint256) {
        return a < b ? a : b;
    }
    function factorial(uint256 n) public pure returns (uint256) {
        uint256 result = 1;
        for (uint256 i = 1; i <= n; i++) {
            result *= i;
        }
        return result;
    }
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
    function isArmstrong(uint256 num) public pure returns (bool) {
        uint256 originalNum = num;
        uint256 sum = 0;
        uint256 digits = 0;
        while (num != 0) {
            digits++;
            num /= 10;
        }
        
        num = originalNum;
        while (num != 0) {
            uint256 digit = num % 10;
            sum += digit ** digits;
            num /= 10;
        }
        
        return sum == originalNum;
    }
}

