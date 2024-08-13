// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26; // this is the solidity version

contract SimpleStorage {
    // every types has their own favorite number
    uint256 public favoriteNumber;

    uint256[] listOfFavoriteNumbers; 
    
    struct Person{
        uint256 favoriteNumber;
        string name;
    }

    // dynamic array
    Person[] public listOfPeople; //

    function store(uint256 _favoriteNumber) public {
        favoriteNumber = _favoriteNumber;
    }

    mapping(string => uint256) public nameToFavoriteNumber;


    //view, pure
    function retrieve() public view returns(uint256){
        return favoriteNumber;
    }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        listOfPeople.push(Person(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }

}



