// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract bank {
    struct Account{
        address owner;
        uint256 amount;
        uint256 accountCreatedtime;
    }

    mapping (address => Account) public LaxmiChitFund;

    event balanceAdded(address owner, uint256 amount, uint256 timeStamp);
    event withdrawalDone(address owner, uint256 amount, uint256 timeStamp);
    
    modifier minimum(){
        require (msg.value >= 1 ether, "Doesn't follow minimum criteria");
        _;
    }

    //function for opening account

    function createAccount() public payable minimum {
        LaxmiChitFund[msg.sender].owner = msg.sender;
        LaxmiChitFund[msg.sender].amount = msg.value;
        LaxmiChitFund[msg.sender].accountCreatedtime = block.timestamp;
        emit balanceAdded(msg.sender, msg.value, block.timestamp);
    }  

    //function for depositing 

    function depositing() public payable minimum{
        LaxmiChitFund[msg.sender].amount += msg.value;
        emit balanceAdded(msg.sender, msg.value, block.timestamp);
    }

    //withdrawal function

    function withdrawal() public payable{
        //account.transfer(amount to transfer)
        payable(msg.sender).transfer(LaxmiChitFund[msg.sender].amount);
        LaxmiChitFund[msg.sender].amount = 0;
        //payable(msg.sender) makes account to transfer funds
        emit withdrawalDone(msg.sender, msg.value, block.timestamp);
    }
}