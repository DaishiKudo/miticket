pragma solidity ^0.6.3;

/// @title Ticket_1 smart contract by Mi Ticket
/// @author dk by Mithra

contract Ticket_1{

    address mithra = 0x000000000000;
    address owner = mithra; 
    

    //会場の規模的に
    uint16 ticketId = 0;

    //上限65000円だとして
    uint16 ticketFee = 0;

    function setFee(uint16 _ticketFee) public owner{  //artistだけが設定できる様にした方いい？
        ticketFee = _ticketFee;
    }

    function trasferTicket() public payable{
        require(owner == mithra);
        require(msg.value == ticketFee);

        owner = msg.sender;
    }

    function resetOwner() {
        //ほんとに売りたい？
    }
}