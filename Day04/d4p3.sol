// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract Lottery {

    // Structure to hold lottery details
    struct Prize {
        address winner;
        uint256 prizeAmount;
    }

    // State variables
    uint256 public prize1Amount = 100 ether;
    uint256 public prize2Amount = 50 ether;
    uint256 public prize3Amount = 25 ether;

    Prize private firstPrize;
    Prize private secondPrize;
    Prize private thirdPrize;

    // Function to generate a random number and assign prizes
    function generateLotteryNumber() public returns (string memory) {
        uint256 lotteryNumber = uint256(keccak256(abi.encodePacked(block.timestamp, block.prevrandao))) % 1000;

        if (lotteryNumber % 3 == 0 && lotteryNumber % 5 == 0) {
            firstPrize.winner = msg.sender;
            firstPrize.prizeAmount = prize1Amount;
            return "First Prize Winner!";
        } 
        else if (lotteryNumber % 7 == 0 || lotteryNumber % 11 == 0) {
            secondPrize.winner = msg.sender;
            secondPrize.prizeAmount = prize2Amount;
            return "Second Prize Winner!";
        } 
        else if (lotteryNumber % 5 == 0 && lotteryNumber % 10 != 0) {
            thirdPrize.winner = msg.sender;
            thirdPrize.prizeAmount = prize3Amount;
            return "Third Prize Winner!";
        } 
        
        return "No Prize!";
    }

    // Function to view the prizes
    function viewPrizes() public view returns (Prize memory, Prize memory, Prize memory) {
        return (firstPrize, secondPrize, thirdPrize);
    }
}

