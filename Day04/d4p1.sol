// SPDX-License-Identifier: MIT
pragma solidity >=0.8.2 <0.9.0;

contract d4p1{
    struct ticket {
        uint index;
        string name;
    }
    
    uint public size;
    ticket[] public tickets;
    uint ticketCount = 0;

    constructor(uint _size) {
        size = _size;
    }

    function fillTickets(string memory ticketName) public {
        require(ticketCount +1 < size);
        ticketCount++;
        tickets.push(ticket(ticketCount, ticketName));
    }

    function getTickets() public view returns (ticket[] memory) {
        return tickets;
    }
}