pragma solidity ^0.5.11;
contract Mycont{
    mapping (address=> uint ) balances;
    function invest ()external payable { //payable is a keyword for pay etheror send ether and it is empty
       if (msg.value< 1000) {
           revert();      // revert key word cancil the tranxition
       }
       balances [msg.sender]+=msg.value;  // add balances to the user 
    }
    function balanceOf() external view returns (uint){    // view is keyword and this fun show the amount of ther you have 
        return address(this).balance;
        
    }
    
}