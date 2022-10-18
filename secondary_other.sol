// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract Secondary{
    function DoingSomething() external pure returns (string memory){
        return "Hello From External Function";
    }
}