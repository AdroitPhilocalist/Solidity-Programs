//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract MarkstoGrade{
    function getGrade(uint256 marks) public pure returns (string memory) {
        if (marks >= 90) {
            return "O";
        } else if (marks >= 80) {
            return "E";
        } else if (marks >= 70) {
            return "A";
        } else if (marks >= 60) {
            return "B";
        } else if (marks >= 50) {
            return "C";
        } else if (marks >= 40) {
            return "D";
        } else {
            return "F";
        }
    }
}