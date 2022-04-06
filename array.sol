// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

contract ArrayBuild{
        uint [] public numbers = [3, 4, 5];

        function addArray(uint item, uint value) public{
            numbers[item] = value;
        }

        function LenghtArray() public view returns(uint){
            return numbers.length;
            
        }
        function checkArray(uint item) public view returns(uint){
            if(item < numbers.length){
                return numbers[item];
            }
            return 0;
        }

        function pushArray (uint item) public{
            numbers.push(item);
        }
        function popArray () public{
            numbers.pop();
        }


}