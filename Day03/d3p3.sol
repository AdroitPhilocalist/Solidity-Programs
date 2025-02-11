//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract TriangleCalculator {
    function isValidTriangle(uint256 a, uint256 b, uint256 c) public pure returns (bool) {
        return (a + b > c && a + c > b && b + c > a);
    }
    function getTriangleType(uint256 a, uint256 b, uint256 c) public pure returns (string memory) {
        if (!isValidTriangle(a, b, c)) {
            return "Not a valid triangle";
        }
        
        if (a == b && b == c) {
            return "Equilateral";
        } else if (a == b || b == c || a == c) {
            return "Isosceles";
        } else if (isRightAngled(a, b, c)) {
            return "Right-angled";
        } else {
            return "Scalene";
        }
    }

    // Function to check if the triangle is right-angled using Pythagorean theorem
    function isRightAngled(uint256 a, uint256 b, uint256 c) public pure returns (bool) {
        // Check if a^2 + b^2 = c^2 (where c is the hypotenuse)
        uint256 maxSide = a;
        uint256 side1 = b;
        uint256 side2 = c;
        
        if (b > maxSide) {
            maxSide = b;
            side1 = a;
            side2 = c;
        }
        if (c > maxSide) {
            maxSide = c;
            side1 = a;
            side2 = b;
        }
        
        return (side1 * side1 + side2 * side2 == maxSide * maxSide);
    }

    // Function to calculate the area of the triangle using Heron's formula
    function getArea(uint256 a, uint256 b, uint256 c) public pure returns (string memory) {
        if (!isValidTriangle(a, b, c)) {
            return "Not a valid triangle";
        }

        // Heron's formula
        uint256 s = (a + b + c) / 2; // Semi-perimeter
        uint256 area = sqrt(s * (s - a) * (s - b) * (s - c));
        
        return uintToStr(area);
    }

    // Helper function to calculate the square root (integer part)
    function sqrt(uint256 x) public pure returns (uint256) {
        uint256 z = (x + 1) / 2;
        uint256 y = x;
        while (z < y) {
            y = z;
            z = (x / z + z) / 2;
        }
        return y;
    }

    // Helper function to convert uint256 to string
    function uintToStr(uint256 _i) public pure returns (string memory) {
        if (_i == 0) {
            return "0";
        }
        
        uint256 j = _i;
        uint256 length;
        while (j != 0) {
            length++;
            j /= 10;
        }
        
        bytes memory bstr = new bytes(length);
        uint256 k = length - 1;
        while (_i != 0) {
            bstr[k--] = bytes1(uint8(48 + _i % 10));
            _i /= 10;
        }
        
        return string(bstr);
    }
}
