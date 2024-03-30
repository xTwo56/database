// SPDX-License-Identifier: MIT
pragma solidity >=0.7.0<0.9.0;

contract Database{

    struct Details {
        string aadharId;
        string name;
        string DOB;
        string phoneNo;
        string rollNo;
        string batchNo;

    }
    
    mapping( uint256=> Details) public list;

    uint256 public count=0;
    constructor()
    {

    }

    function addPerson(string memory aadharId,string memory name, string memory DOB, string memory phoneNo, string memory rollNo, string memory batchNo) public 
    {
        Details memory person = Details({aadharId: aadharId,name: name,DOB: DOB,phoneNo: phoneNo, rollNo: rollNo, batchNo: batchNo});
        list[count]=person;
        count++;
    }
    





}
