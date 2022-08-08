pragma solidity ^0.5.11;
contract Mycontract{
    event NewTrade(
        uint date ;
        address from;  //for filtering the event we can use "address indexed from", we can use index only 3 type  
        address to;
        uint amount;
        
        );
        
        function trade(address to,uit amount)external {
            emit NewTrade (now , msg.sender,to ,amount);   // we can directly use "NewTrade" no need of emit keyword here, "now" is keyword for time stemp   
        }
    
}