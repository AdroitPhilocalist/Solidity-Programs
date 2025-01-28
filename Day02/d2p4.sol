//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract Calculator{
    function add(int a ,int b) public pure returns(int){
        return a+b;
    }
    function sub(int a ,int b) public pure returns(int){
        return a-b;
    }
    function product(int a ,int b) public pure returns(int){
        return a*b;
    }
    function quotient(int a ,int b) public pure returns(int){
        return a/b;
    }
    function mod(int a ,int b) public pure returns(int){
        return a%b;
    }
}