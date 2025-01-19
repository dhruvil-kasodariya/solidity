// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Result {
    struct student {
        uint256 RollNo;
        string Name;
        uint256 Subject1;
        uint256 Subject2;
        uint256 Subject3;
        uint256 TotalMark;
    }

    mapping(address => student) public studentsDetailsWithWalletAddess;

    function setStudentDetail(
        uint256 rollNo,
        string memory name,
        uint256 subject1,
        uint256 subject2,
        uint256 subject3
    ) public {
        studentsDetailsWithWalletAddess[msg.sender] = student(
            rollNo,
            name,
            subject1,
            subject2,
            subject3,
            subject1 + subject2 + subject3
        );
    }

    // function getSender() public view returns (student memory) {
    //     return studentsDetailsWithWalletAddess[msg.sender];
    // }

    function getSender()
        public
        view
        returns (
            uint256 rollNo,
            string memory name,
            uint256 subject1,
            uint256 subject2,
            uint256 subject3,
            uint256 totalMark
        )
    {
        student memory sender = studentsDetailsWithWalletAddess[msg.sender];
        rollNo = sender.RollNo;
        name = sender.Name;
        subject1 = sender.Subject1;
        subject2 = sender.Subject2;
        subject3 = sender.Subject3;
        totalMark = sender.TotalMark;
    }

    //    function getSendeR()
    //     public
    //     view
    //     returns (
    //         uint256 rollNo,
    //         string memory name,
    //         uint256 subject1,
    //         uint256 subject2,
    //         uint256 subject3,
    //         uint256 totalMark
    //     )
    // {
        
    //     rollNo = studentsDetailsWithWalletAddess[msg.sender].RollNo;
    //     name = studentsDetailsWithWalletAddess[msg.sender].Name;
    //     subject1 = studentsDetailsWithWalletAddess[msg.sender].Subject1;
    //     subject2 = studentsDetailsWithWalletAddess[msg.sender].Subject2;
    //     subject3 = studentsDetailsWithWalletAddess[msg.sender].Subject3;
    //     totalMark = studentsDetailsWithWalletAddess[msg.sender].TotalMark;
    // }

    // function getSendEr()
    //     public
    //     view
    //     returns (
    //         uint256 ,
    //         string memory ,
    //         uint256 ,
    //         uint256 ,
    //         uint256 ,
    //         uint256 
    //     )
    // {
    //     student memory sender = studentsDetailsWithWalletAddess[msg.sender];
    //     uint rollNo = sender.RollNo;
    //     string memory name = sender.Name;
    //     uint subject1 = sender.Subject1;
    //     uint subject2 = sender.Subject2;
    //     uint subject3 = sender.Subject3;
    //     uint totalMark = sender.TotalMark;
    //     return (rollNo,name,subject1,subject2,subject3,totalMark);
    // }
}
