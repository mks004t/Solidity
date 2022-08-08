pragma solidity ^0.5.11;

//1 Create child contract 
//2 store child contract address
//3 cast contract pointer to address
//4 call function of child contract
//5 caveat with admin is contract  
contract LoanFactory {
    function createLoan() external {
        Loan[] loans;
        Loan loan=new Loan(100);
        loans.push(loan);
        address(loan);
        
        loan.reimburse();
        }
    
    function withdraw()
    {
        loan.withdraw();
        
        
    }
}
    
    contract Loan {
        uint punblic amount ;
        address admin;
        contructor (uint _amount )public {
            amount =_amount ;
            admin = msg.sender;
        }
        
        
        function withdraw() external{
            //withdraw ether
            
        }
        
        function reimburse() exteranal {
            
        }
    }
    