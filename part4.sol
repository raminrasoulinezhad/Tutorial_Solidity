pragma solidity >=0.7.0 <0.9.0;

contract ramin_test {
    
    // 1 ether = 10^3 finney = 10^9 gwei = 10^18 wei
   // part 4 
    mapping(address => uint256) public balances;
    address payable wallet;
    constructor (address payable _wallet) {
        wallet = _wallet;
    }
    
    event Purchase(address _buyer, uint256 _amount);
    
    function buyTocken() public payable{
        balances[msg.sender] += msg.value;  //tx.origin
        wallet.transfer(msg.value); 
        emit Purchase(msg.sender, msg.value);
    }
	
	//fallback () external  payable {
	//    buyTocken();
	//}
	
}