//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract QuadraticRoots {
    function checkRoots(int256 a, int256 b, int256 c) public pure returns (string memory) {
        int256 discriminant = b * b - 4 * a * c;
        if (discriminant > 0) {
            return "The roots are real and distinct.";
        } else if (discriminant == 0) {
            return "The roots are real and equal.";
        } else {
            return "The roots are imaginary.";
        }
    }
}
