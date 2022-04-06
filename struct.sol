// SPDX-License-Identifier: GPL-3.0

pragma solidity 0.8.0;

struct Student{
   uint age;
   string name;
   address ownerAddress;
}

contract newStudent{
    Student public studentDetails;

    enum Status {Successful, Failed}
    Status public studentStatus= Status.Failed;

    constructor(uint _age, string memory _name){
        studentDetails.age = _age;
        studentDetails.name = _name;
        studentDetails.ownerAddress = msg.sender;
    }
    function changeDetails (uint _age, string memory _name, address _ownerAddress) public{
        if(studentStatus == Status.Successful){
        Student memory studentDetail = Student({
                 age : _age,
                name : _name,
                ownerAddress : _ownerAddress
        });
       studentDetails = studentDetail;
        }
    }
}