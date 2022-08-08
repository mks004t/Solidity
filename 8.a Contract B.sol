pragma solidity ^0.5.11;

contract InterfaceB{ // all the function written indide the InterfaceB can be accesss by another smart contract .
     function helloWorld()external pure return (string memory);
    function foo()external;
}

contract B{
    function helloWorld()external pure return (string memory){
        return 'helloWorld';
    }
    
    function foo()external{
        // what ever or kuch bhi likh do 
    }
}