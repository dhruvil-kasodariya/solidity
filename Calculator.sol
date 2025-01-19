// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract Calculator{

function addition(int a ,int b) public pure returns (int) {
    return a+b;
}

function subtraction(int a ,int b) public pure returns (int) {
    return a-b;
}

function multiplication(int a ,int b) public pure returns (int) {
    return a*b;
}

function division(int a ,int b) public pure returns (int) {
    require(b != 0 ,"Division by zero is not allowed");
    return a/b;
}

}