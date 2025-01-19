// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Grade {
    function getGrade(int mark) public pure returns(string memory){
        string memory grade;
        require(mark <= 100 && mark >=0 ,"Mark should be between 0 and 100");
        if (mark >33){
            if(mark<=100 && mark >85){
                grade = "A";
            }else if(mark<=85 && mark >70){
                grade = "B";
            }else if(mark<=70 && mark >55){
                grade = "C";
            }else if(mark<=55 && mark >40){
                grade = "D";
            }else if(mark<=40 && mark >33){
                grade = "E";
            }
        }else {
            grade ="Fail";
        }
        return grade;

    }
}