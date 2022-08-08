// Note focus on upper and lower case alphabet ;
pragma solidity ^0.5.11;
//1 declear stucture 
//2 C R U D 
//3 Array of structure
//4 Mapping in structure
contract MYcontaract {
//1 declear stucture 
  struct User{
    address add;
   int score;
   string name;
   }

 User[] users;    // array declearation 
 
 Mapping (address => User) userList2;   // mapping declearation 
 //2 C R U D 
   function foo(string calldata _name) external {
     User memory user1 = User(msg.sender,0,_name);     // create 
     User memory user2 = User (msg.sender,0,_name);    // create 
     User memory user3 = User({name:_name, score :0, Add: msg.sender}); // create 
     
     user3.add;         // read or accesss
     user3.score= 20;   //update 
     delete user1;      // delete
       
     users.push(user2);         // array of  strings 
     userList[msg.sender]=  User ();  // mapping in structure 
   }
 
}
    