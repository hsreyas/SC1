// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.24;

contract TicketSystem {
    enum TicketType { Regular, VIP }

    struct Ticket {
        address owner;
        uint eventID;
        TicketType ticketType;
    }

    Ticket[] public issuedTickets;
    mapping(address => mapping(uint => bool)) validTickets;

    function issueTicket(uint _eventID, TicketType _ticketType) public {
        issuedTickets.push(Ticket({
            owner: msg.sender,
            eventID: _eventID,
            ticketType: _ticketType
        }));
        validTickets[msg.sender][_eventID] = true;
    }

    function isTicketValid(address _owner, uint _eventID) public view returns (bool) {
        return validTickets[_owner][_eventID];
    }

    function ticketOwnershipTransfer(uint _ticketIndex, address _newOwner) public {
        require(_ticketIndex < issuedTickets.length, "Invalid Ticket Index");
        Ticket storage tic = issuedTickets[_ticketIndex];
        require(msg.sender == tic.owner, "Only the owner can call this function");

        tic.owner = _newOwner;
        validTickets[_newOwner][tic.eventID] = true;
        validTickets[msg.sender][tic.eventID] = false;
    }
}
