pragma solidity ^0.5.11;
contract Mycont{
    function invest ()external payable { //payable is a keyword for pay etheror send ether and it is empty
        
    }
    function balanceOf() external view returns (uint){    // view is keyword and this fun show the amount of ther you have 
        return address(this).balance;
        
    }
    
}