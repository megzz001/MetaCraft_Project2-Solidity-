// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/

contract MyToken {

    // Strored all the public variables here containing TokenName,TokenAbbrevation and its Supply.
    string public  tokenName = "Metacrafter_Megz";
    string public  tokenAbbrv =  "MEGZ";
    uint public totalSupply =0;
    
    // mapping variable here to keep track of how many tokens each address holds.
    mapping(address => uint) public  balances;

    // mint function
    function mint(address _address, uint _value) public {
        totalSupply += _value; //Increases the total supply of tokens.
        balances[_address] += _value ;//Increases the balance of a specified address.
    }

    // burn function to decrease totalsupply
    function  burn(address _address, uint _value) public {
        if(balances[_address] >= _value){
        totalSupply -= _value;
        balances[_address] -= _value ;
        }
       
    }
}
