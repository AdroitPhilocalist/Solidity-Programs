//SPDX-License-Identifier:GPL-3.0
pragma solidity >=0.8.2 <0.9.0;
contract temperature{
    int256 public scale=10**3;
    function getdata(int256 celcius)public view returns(int256){

        int256 fahrenheit=((((9*celcius*scale)/5))+(32*scale));
    return fahrenheit;
    }
}
