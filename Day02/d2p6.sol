//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;


contract CircleArea {

    uint256 constant PI = 3141592653589793; 
    function calculateArea(uint256 radius) public pure returns (uint256) {
        uint256 radiusSquared = radius * radius;
        uint256 area = (PI * radiusSquared) / 1e16; 
        return area;
    }
}
