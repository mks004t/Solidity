pragma solidity ^0.5.11;
//1 declearing mapping 
    //2 C R U D 
    //3 default value
    //4 exotic mapping 1 :nested mapping 
    //5 exotic mapping 2: array inside mapping
contract mycontract{
    //1 declearing mapping 
    
    mapping(address => uint ) balances;
    
    mapping(address => mapping(address=>bool) ) approved;   /*for 4th */ 
    
    mapping (address => uint[]) scores;              //for 5th
    
    function fun() external{
    //2 add 
    balances[msg.sender]=100;
    //2 read
    balances[msg.sender];
    //2 update
    balances[msg.sender] = 200;
    //2 delete
    delete balances[msg.sender];
    
    //3 default value
   // balances[someAddressThedonotexist]=>0; /*for address=> bool it is faulse i.e => faulse*/
    
    //4 exotic mapping 1 :nested
    approved[msg.sender][spender]=true;        //add
    approved[msg.sender][spender];             //read
    approved[msg.sender][spender]=false;       //update
    delete approved[msg.sender][spender];      //delete
    
    //5 exotic mapping 2 
    scores[msg.sender].push(1);                //add
    scores[msg.sender].push(2);                //add
    score[msg.sender][0];                   //read /display
    score[msg.sender][0]=10;               //upadate
    delete score[msg.sender][0];  
    }
    

    
}