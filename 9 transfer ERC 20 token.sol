pragma solidity ^0.5.11;

import'token.sol';

//1 import ERC 20 token
//2 transfer()
//3 transferFrom()  / approve()

contract TransferToken{
    
    function transfer() external {
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        token.transfer(msg.sender,100);  // sender and amount 
        
    }
    
    function transferFrom(address recipient ,uint amount) external {
        Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
        token.transferFrom(msg.sender,recipient, amount  )
    }
    
}
contract Owner{
    function transfer (address recipient,uint amount )external{
     Token token = Token(0xdD870fA1b7C4700F2BD7f44238821C26f7392148);
     token.approve(0x583031D1113aD414F02576BD6afaBfb302140225 ,amount);
     TransferToken transferToken =transferToken(0x583031D1113aD414F02576BD6afaBfb302140225);
     transferToken.transferFrom(recipent ,amount);
     }
    
}