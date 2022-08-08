pragma solidity ^0.5.11;
 //1 storage arrays 
 //2 memory array
 //3 array argument and return array from function

contract Mycontract{
    //1 storage arrays (dynamic size array)
    uint [] myarray;
    bool [] boolarray;
   
    function foo() external {
      // add an element in array 
        my.array.push(2);
        my array.push(9);
      
      // read an element in the array 
      myarray[0];  // this give the first element i.e 2
      
      //update array
      myarray[0]=20;
      
      //delete element in array
      delete myarray[1]; //it just change the value to 0;if it is bool array then change to false
      
      // display all element in the array
      for (uint i=0; i<myarray.lengh; i++)
      {
          myarray[i];
      }
      
      
    }
    
    
    //2 memory array , temperary array eg array in function not save on blockchain
    
    function bar() external {
       //add elements in array
        uint[] memory new array = new uint [](10); // 10 is the size of array ,memory and  new key word is used
        newarray[0]=10;
        newarray[1]=20;          //up to 10 element OR use for loop
        
       //read array 
       newarray[0];
       
       //delete element in array 
       delete newarray[0];
       
    }
    
    //3 array argument and return array from function
      function mk(uint []calldata myargument )external {   //calldata is keyword and my myargument is any variable name
          
      }   
      
      function mk1(uint []memory myargument )public {  // for public use memory keyword
          
      }
       function mk1(uint []memory myargument )internal return(uint [] memory) {
          
      }
    
}