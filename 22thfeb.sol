// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract day6 {
    struct student {
        uint256 RollNo;
        string Name;
        string Email;
        uint256 Mobile;
        uint256 TotalMark;
    }
    mapping(uint256 => student) public students;
    mapping(string  => student) public studentsDetails;
    mapping (address => student) public studentsDetailsWithWalletAddess;

    mapping(string => uint256) public number1;
    mapping(uint256 => string) public number2;

    function setMapp(string memory _name, uint256 _rollNo) public {
        number1[_name] = _rollNo;
        number2[_rollNo] = _name;
    }

    function setStudentDetail(
        uint256 rollNo,
        string memory name,
        string memory email,
        uint256 mobile,
        uint256 totalMark
    ) public {
        require(
            (mobile >= 1000000000 && mobile <= 9999999999),
            "Invalid mobile number"
        );
        students[rollNo] = student(rollNo, name, email, mobile, totalMark);
        studentsDetails[name] = student(rollNo, name, email, mobile, totalMark);
        studentsDetailsWithWalletAddess[msg.sender] =student(rollNo, name, email, mobile, totalMark);
    }

    function getSender() public view returns (address) {
        return msg.sender;
    }
}
