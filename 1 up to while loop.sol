pragma solidity ^0.5.11;
contract MYcontract{
    //1fixed size data type 
    bool istready;
    uint a;
    address myadd;   // used to store the address/key
    bytes32 data ;
    
    //2 variable size data type
    string name;
    bytes _data ;   //undecleared bytes , it can be variable size like 16,32,64 bytes or so on
    uint [] arr;   // array in solidity but it must be of sasme type eg, integers , bool, string not mix of all 
    mapping (uint => string ) users; // it is like java script object
    
    //3 user defined data types
   //1,structure
    struct User {
        uint id;
        string name;
        uint [] friendIDs;
    }
    // enum type
    enum colour{ 
        Red,
        Green,
        Blue
        
    }
}


//How to write function in solidity 
contract MY_first_Contract{
    uint a;
    uint b;
    function ad() external{
        return a+b;
    }
    
    //function to display a value 
    uint value;
    
    function Getvalue() external view returns(uint){
//view keyword used to read only variable
        return value;
    }
function Getvalue() external pure  returns(uint){
//pure is used for computation  
      return 1+2;
    }
    //function to modify data 
    function setvalue (uint _value) external{
        value= _value;
    }
    
}


contract mycontract{
    
    //tranxition
    tx.origin   // etherium address that send the tranxition
    
    
    //massage 
    msg.value //wei 1 wei =10^(-18) ether  // give the amount of ether send , wei is the elementry unit of ether 
    msg.sender //ether ether address
     
     // differenc B/T origin and sender
         Alice => smart contract A       => smart contract B               =>smart contract c
              tx.origin =Alice           tx.origin= Alice
              msg.sender=Alice           msg.sender= smart contract A        msg.sender= smart contract B
    
    //block building
    block.timestamp / now => 1970(s)  //2 ways to write and time stemp is in second 
    
}

contract mycont{
    function foo() external {
       // if else  same as c++
        bool boolvalue
        if(msg.sender == 100)  // compression sign are as c++ eg == ,<=,>= ,>,< ,! etc
        {  //  .....
        }
        if(! boolvalue)
        {//........
        }
        else
        {
            //..........
        }
    
    //for loop  //same as c++ // break and continue is also same in solidity as in c++
    for (uint i=0 ;i<10 ;i++ )
    {
      //......  
    }
     uint n=5
    //while loop //same as c++
    while (n>=0){
       n--;
       if(n==2)
       {
           break;
       }
       else
       {
           continue;
       }
    }
    
}

}
