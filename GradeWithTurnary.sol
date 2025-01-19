// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract GradeWithTurnary {
    function getGrade(int mark) public pure returns (string memory) {
        string memory grade;
        require(mark <= 100 && mark >= 0, "Mark should be between 0 and 100");
        mark < 33
            ? grade = "Fail"
            : (
                (mark <= 100 && mark > 85)
                    ? grade = "A"
                    : (
                        (mark <= 85 && mark > 70)
                            ? grade = "B"
                            : (
                                (mark <= 70 && mark > 55)
                                    ? grade = "C"
                                    : (
                                        (mark <= 55 && mark > 40)
                                            ? grade = "D"
                                            : grade = "E"
                                    )
                            )
                    )
            );
        return grade;
    }
}
