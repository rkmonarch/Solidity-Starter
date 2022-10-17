// SPDX-License-Identifier: MIT

pragma solidity >= 0.8.4;

contract Sample{
    uint256 public coins = 0;
    function addcoin(uint256 _value) public {
coins = coins + _value;
    }

    function subtract() public {
        coins-=1;
    }

    function set(uint256 _coins) public {
        coins = _coins;
    }
}