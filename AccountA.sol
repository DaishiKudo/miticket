pragma solidity ^0.6.3;

/// @title userAccount_A smart contract by Mi Ticket
/// @author dk by Mithra


contract account_A{

    //人口的に
    uint32 accountOwnerId = 0;

    function setAccountOwner(uint32 _accountOwnerId) public Owner{
        accountOwnerId = _accountOwnerId;
    }

    function getTicket() public{
        //check the ticket fee

        //enough money in wallet?

        //send to Ticket S.C.
        Ticket_1.transferTicket({from: address(this), value: _ticketPrice});

        //changed ownership of Ticket
    }

}