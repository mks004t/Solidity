pragma solidity ^0.5.00;
//1 call function of the other 
//2 import keywords
//3 contract interface 
//4 error propagtion


contract A {
    //kuch bhi
    //1. interface of B=>B 
    //2. address of B 
    
    address addressB;
    function setAddresB(address _addresB) external {
        addressB=_addresB;
    }
    
    function callhelloWorld() external view returns(string memory){
        B b=B(addressB);
        return b.helloWorld();
        
    }
    
}


contract B {
   function helloWorld()external pure returns(string memory){
       return 'helloWorld';
   }
}
