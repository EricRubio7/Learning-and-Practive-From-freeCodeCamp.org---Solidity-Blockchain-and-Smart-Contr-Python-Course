// SPDX-License-Identifier: MIT
//Simple example of a smart contract


pragma solidity >=0.6.0;

contract SimpleStorage{
    
    uint256 favoriteNumber; //Gets initialized to 0 in solidity
    
    
    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }
    
    struct People {
        uint256 favoriteNumber;
        string name;
    }
    
    People[] public people; 
    mapping(string => uint256) public nameToFavoriteNumber;
    
    
    
    function retrieve() public view returns(uint256){
        //view reads off the blockchain and is not a transaction
        //pure do some type of math and is not a transaction
        return favoriteNumber;
    }
    
    function addPerson(string memory _name, uint256 _favoriteNumber) public{
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
        
    }
    
    
    
    
    
    
    
}
