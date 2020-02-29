pragma solidity ^0.6.3;

/// @title TicketList smart contract by Mi Ticket
/// @author dk by Mithra

contract ticketlist{

    address mithra = 0x00000000;

    uint8 numberOfTicketTypes = 0;
    uint16 counter = 0;
    uint16 numberOfAllTicket = 0;
    bool completeSetTicket = false;

    mapping(uint8 => uint16) Type2Fee;
    mapping(uint8 => uint16) Type2Number;
    mapping(uint8 => uint16) TypeCounter;
    mapping(uint16 => address) checkOwner;

    modifier onlyOwner() {
        require(msg.sender == mithra);
        _;
    }

    struct Ticket {
        uint16 ticketId;
        uint8 ticketType;
        address ticketOwner;
    }

    Ticket[] public ticketList;


    function setFeeAndNumberOfTicket(uint8 _ticketType, uint16 _ticketFee, uint16 _numberOfTicket) public onlyOwner{
        Type2Fee[_ticketType] = _ticketFee;
        Type2Number[_ticketType] = _numberOfTicket;
        numberOfAllTicket = numberOfAllTicket + _numberOfTicket;
        TypeCounter[_ticketType] = 0;
    }

    function completeTicket() public onlyOwner{
        completeSetTicket = true;
    }


//配列を固定長にする
    function setTicketIdAndFirstOwner() public onlyOwner{
        require(completeSetTicket);
        uint16 id = 0;
        for(uint i = 0; i < numberOfAllTicket; i++){
            ticketList.push(id,, mithra);
            id++;
        }
    }

    function trasferTicket(uint8 _type) public payable{
        require(TypeCounter[_type] < Type2Number[_type]);
        require(ticketList[counter].ticketOwner == mithra);
        require(msg.value == Type2Fee[_type]);

        ticketList[counter].ticketType = _type; //2次流通ではcounter使えない？
        ticketList[counter].ticketOwner = msg.sender;
        counter++;
        TypeCounter[_type]++;
    }

/*    function resetOwner(uint){
        ticketList[].ticketOwner = mithra;

    }
*/

}