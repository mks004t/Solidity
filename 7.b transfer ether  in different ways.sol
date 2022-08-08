pragma solidity ^0.5.11;
//1 Transfer 
//2 address vs address payable
//3 addres payable casting (address and uint 160)
//4 msg.sender       (it is address payable )
//5 send vs transfer

contract Mycont{
    
    address payable[] recipients;
    
    function sendEther (address payable  recipient) external{  // this fun transfer the 1 ether from this contract to the recipient
        recipient.transfer(1 ether );
        
        
        address a;
        a=recipient;
        a.transfer(100);   // this is wrong bec its data type is address 
      
      //4 msg.sender   
        msg.sender.transfer(100); 
        
        recipient.send(1 ether);
    }
    
}