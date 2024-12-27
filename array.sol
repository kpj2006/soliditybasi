// SPDX-License-Identifier: Unlincensed
pragma solidity >=0.7.0;

contract BasicArray {
    
    uint[] public numbers;     //declared arry undefined
    
    function addNumber(uint _number) public {     //for addnum in array
        numbers.push(_number);
    }
    
    function getNumber(uint _index) public view returns (uint) {    //get num by index functn
        require(_index < numbers.length, "Index out of bounds");   //loop in which it check
        return numbers[_index];
    }
    
    function getArrayLength() public view returns (uint) {      //for lenght of arr
        return numbers.length;
    }
    
    function removeNumber(uint _index) public {                         //input index for remove that index number
        require(_index < numbers.length, "Index out of bounds");
        
        for (uint i = _index; i < numbers.length - 1; i++) {         //after that index
            numbers[i] = numbers[i + 1];
        }
        
        numbers.pop();        //pop use for delete and push for insert
    }
    
    function getAllNumbers() public view returns (uint[] memory) {  //as arr is non primitive datatypes hence take from that
        return numbers;
    }
}
