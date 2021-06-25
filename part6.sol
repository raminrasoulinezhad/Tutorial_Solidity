pragma solidity >=0.7.0 <0.9.0;

library Math {
    function inflation(int v1, int v2) internal pure returns (int) {
        require(v1 > 0);
        int c = v1 * v2;
        return c;
    }
}

contract ramin_test {
    int public value = 1;
    int public interest;
    
    function calculate (int v2) public {
        value = Math.inflation(value, v2);
    }
}