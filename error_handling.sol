// SPDX-License-Identifier: MIT
pragma solidity ^0.8.4;

contract handling_erros{
    // ways to keep a check
    // #Require

    function require_example() public pure{
        require(10<5,"I am bad at maths");
        // if the condition is false this will not execute
    }

    // #Revert

    function revert_example() public pure{
        if(10<5){
            revert();
        }
    }
    // #Assert

    function assert_example() public pure{
        assert(10 == 10);
    }
}