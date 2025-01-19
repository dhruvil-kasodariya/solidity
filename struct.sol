// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract StructExample {
    struct student {
        uint256 RollNo;
        string Name;
        string Email;
        uint256 Mobile;
        uint256 TotalMark;
    }

    student public Student1;

    function setStruct(
        uint256 rollNo,
        string memory name,
        string memory email,
        uint256 mobile,
        uint256 totalMark
    ) public {
        require(rollNo > 0, "Invalid roll number");
        require(totalMark >= 0, "Invalid total mark");
        require(
            (mobile >= 1000000000 && mobile <= 9999999999),
            "Invalid mobile number"
        );
        Student1 = student(rollNo, name, email, mobile, totalMark);
    }
}
