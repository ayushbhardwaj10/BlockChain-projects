pragma solidity ^0.4.21;

contract blockChain {
    uint choice;
    uint toChoice;
    string mycountry;
    uint[3] country;
    uint amount;
   
    string ch="Select your Current Currency : 1.Indian 2.American 3.Japanese ";
    
    //Display the country a person belong to
    function CHOICES() public view returns(string){
        return ch;
    }
    
    //Enable user to choose the country
    function SelectChoice(uint x,uint AMOUNT) public{
        choice = x;
        amount= AMOUNT;
    }
    
    //To help user, check his country entered by him/her
     function VERIFYCOUNTRY() public payable returns(string){
        if(choice==1)
        mycountry="indian";
        else if(choice==2)
        mycountry="American";
        else mycountry="Japanese";
        
        return mycountry;
    }
    
    // to set which currency you want to convert to
     function ToCurrency(uint x) public{
        toChoice = x;
    }
    
    function conversion() public payable returns(uint){
       
       
       if(choice==1)
      {
          if(toChoice==1)
          {
              return amount;
          }
          else if(toChoice==2)
          {
              return amount/2;
          }
          else {
              return (amount+ (amount/2)) ;
          }
      }
      else if(choice==2)
      {
          if(toChoice==1)
          {
               return amount*70;
            
          }
          else if(toChoice==2)
          {
              
              return amount;
          }
          else {
              return amount*109;
             
          }
      }
      else 
      {
          if(toChoice==1)
          {
              return amount/2;
          }
          else if(toChoice==2)
          {
              return (amount/8);
          }
          else {
              return amount ;
          }
      }
        
     
    }
    
   
   
}