//SPDX-License-Identifier:Unlincensed
pragma solidity >=0.7.0;

contract StructArrayExample {

    struct Person {          //declare struct
        string name;
        uint age;
    }

    Person[] public people;

    function addPerson(string memory _name, uint _age) public {    //add people
        people.push(Person(_name, _age));
    }

    function getPerson(uint _index) public view returns (string memory, uint) {
        Person memory p = people[_index];
        return (p.name, p.age);
    }
}
