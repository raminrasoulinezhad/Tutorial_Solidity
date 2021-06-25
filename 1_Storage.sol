// SPDX-License-Identifier: GPL-3.0

pragma solidity >=0.7.0 <0.9.0;

/**
 * @title Storage
 * @dev Store & retrieve value in a variable
 */
contract Storage {

    uint256 number = 2;
    
    /*constructor() public {
        number = 2;
    }*/
    
    event ramin_store(uint256 value);
    event ramin_increment(uint256 value);
    event ramin_decrement(uint256 value);
    
    function store(uint256 num) public {
        number = num;
        //decrement();
        emit ramin_store(number);
    }
    
    function increment() public {
        number = number + 1;
        emit ramin_increment(number);
    }
    
    function decrement() private {
        number -= number;
        emit ramin_decrement(number);
    }

    function retrieve() public view returns (uint256){
        return number;
    }
    
    
}