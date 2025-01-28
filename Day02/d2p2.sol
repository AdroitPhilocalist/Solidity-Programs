//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract UserInput{
    string public userInput="hi";
    uint256 public data1;
    function setInput(string memory input,uint256 d) public 
    {
        userInput=input;
        data1=d;
    }
    function getInput1() public view returns (string memory){
        return userInput;
    }
    function get() public view returns (uint256){
        return data1;
    }
}
