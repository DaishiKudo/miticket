pragma solidity ^0.6.3;

/// @title userAccount_B smart contract by Mi Ticket
/// @author dk by Mithra

contract account_B{

    //人口的に
    uint32 accountOwnerId = 0;

    function setAccountOwner(uint32 _accountOwnerId) public Owner{
        accountOwnerId = _accountOwnerId;
    }

    function getTicket(uint16 _type) public{
        //check the ticket fee


        //enough money in wallet?

        //send to Ticket S.C.
        TicketList.transferTicket({from: address(this), value: _ticketPrice});

        //changed ownership of Ticket

            function trasferTicket(uint8 _type) public payable{
        require(ticketList[counter].ticketOwner == mithra);
        require(msg.value == Type2Fee[_type]);

        ticketList[counter].ticketType = _type;
        ticketList[counter].ticketOwner = msg.sender;
        counter++;
    }
    }

}