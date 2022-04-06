//SPDX-License-Identifier: GPL-3.0

pragma solidity ^0.8.0;

    contract ChallengeOne{
        string public name = "Stella";
        address public immutable owner;
    

        constructor(){
            owner = msg.sender;
        }
        function setFunction(string memory _name) public{
                name = _name;
        }

        function getFunction()public view returns(string memory){
            return name;
        }
    
    }

    contract ChallengeToken{
        uint public tokenID = 34;

        function changeTokenID(uint _tokenID) public{
            tokenID = _tokenID;
        }
    }

    contract sendETH{
        address public owner;
        
        constructor(){
            owner = msg.sender;
        }

        function senETH() external payable {}
        function checkBalance() public view returns(uint){
            return address(this).balance;
        }

        function transferETH (address payable receiver, uint amount)public{
                require(owner == msg.sender, "You Dont Have Access");
                receiver.transfer(amount);
        }

         
    }

    contract NewArrays{
        address [] public players;

        function start() public{
                players.push(msg.sender);
            
        }
               
    }
contract B{
    address public owner = msg.sender;

    function f() internal view returns(address){
        return owner;
    }
}

contract A is B{
    address public defaultOwner = f();
}


