// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract launchpad{
    launch_coin[] public arrayOfContract;
    function publishing() public {
            launch_coin b = new launch_coin();
            b.doSomething();
            arrayOfContract.push(b);
    }
function checkingOwner(uint256 _number) public view returns(address){
    return arrayOfContract[_number].owner();
}

}

contract launch_coin{
    address public owner;
    constructor(){
        owner = msg.sender;
    }
    function doSomething() public {

    }
}