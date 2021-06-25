pragma solidity >=0.7.0 <0.9.0;

contract ramin_test {
    
    // Part 1 
    enum State {Active, Ready, Busy, Learning}
    State public state = State.Ready;
    int public peopleCount = 0;
    
    function activate() public {
        state = State.Active;
    }
    
    // Part 2
    Person [] public people;
    struct Person {
        string FirstName;
        string LasttName;
    }
    
    function addPerson (string memory firstname, string memory lastname) public {
        people.push(Person(firstname,lastname));
        peopleCount += 1;
    }
    
    // Part 3 
    mapping(uint => Cat) public cats;
    struct Cat {
        string color;
        uint8 age;
    }
    
    function addCat (uint id, string memory color, uint8 age) public {
        cats[id] = Cat("black", age);
        ChangeCatColor(id, color);
        peopleCount += 1;
    }
    
    function ChangeCatColor (uint id, string memory color) internal{
        cats[id].color = color;
    }
    
    
    
    address owner;
    uint256 openingTime;
    
    // msg.sender is the person who establish the contract
    constructor () {
        owner = msg.sender;
        
        openingTime = block.timestamp;
        
    }
    

    modifier onlyOwner(){
        require (msg.sender == owner);  // if true --> fine else --> raise error.
        _;
    }
    
    modifier onlyWhileOpen(){
        require(openingTime >= 1645521742);
        _;
    }
    
    
        function ChangeCatAge (uint id, uint8 age) public onlyOwner {
        cats[id].age = age;
    }
    
}