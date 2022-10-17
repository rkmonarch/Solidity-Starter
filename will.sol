// SPDX-License-Identifier: MIT

// Write a program to automatically pay your electricity bill on 1st of every month

pragma solidity >= 0.8.4;

contract DecisionMaking{
    bool isAlive = false; //the person who you're inheriting money from is alive or dead

    function validateIsAlive() public view returns (bool){
        if(isAlive == true){
            return true;
        } else {
            return false;
        }
    }
        uint public walletBalance = 10;

        function transferAmount() public returns(uint){
if(!isAlive){
    walletBalance = walletBalance + 10;
    return walletBalance;
} else {
    return walletBalance;
}
        }
    }
