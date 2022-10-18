// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;
import 'secondary_other.sol';
contract Primary{
//what is required for calling secondary smart contract
// interface of the other contract
// address of smart contract 

 address second;
 function setAddress(address _Second) public{
     second = _Second;
 }

 function calling() public returns(string memory){
     Secondary b = new Secondary();
     return b.DoingSomething();
 }
}

