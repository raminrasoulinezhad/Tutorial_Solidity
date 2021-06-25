pragma solidity >=0.7.0 <0.9.0;

import "./Math.sol";

contract ramin_test {
    using Math for uint;
    
    int public value = 1;
    int public interest;
    
    function calculate (int v2) public {
        value = Math.inflation(value, v2);
    }
}
