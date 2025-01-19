// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract Day1{
    int private  number1 =50;
    bool private booleanValue;
    uint private   number2;

    event valueStted(int oldValue,int newValue);

    function setter (int _num1) public {
        int old =number1;
        number1=_num1;
        emit valueStted(old, _num1);
    }

    // function boolSetter (bool _val) public  {
    //     booleanValue =_val;
    // }

    // function setterTwo (uint _num2) public {
    //     number2 =_num2;
    // }

    function getNumber1() public view returns(int){
        return  number1;
    }
}