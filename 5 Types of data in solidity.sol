pragma solidity ^0.5.11;
contract mycont{
    
    //1 storage 
    //2 memory  , it dosenot store in block chain 
    //3 stack
    //4 calldata 
    
    //1 storage
    uint a;   //state variable i.e defined outside function so it is storage type
    
    struct User{
        string name;
        
    }
    User[] users;
    
    function foo() external{
        User storage user =users[0];    //here user is a pointer (lower case) ,User is string 
        user.name ='what ever you want ';
        bar(user);   // calling bar function inside a smart contract bec it is internal (line 24)
    }
    
    function bar(User memory user) internal{
        
    }
    
    //3 stack
    function foo1() external{
     uint b;    //it is stack variable bec it is decleared inside fun , life time of the variable is as long as function life
     
    }
    
    //4 calldata
    function foo2(User [] calldata _users) external{  //in solidity we can not call memory locatin inside function we can only call address so we use calldata for calling memory in side function
        uint b;
    }
    
     
}