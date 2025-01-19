// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract day3{

constructor(int data) {
    A =10;
    C = data;
}

    int public constant B =2;
   int public A;
   int public  immutable C ; 

    function setterA(int a) public  {
       A = a;
    }

    function canVote(uint age) public pure  returns(string memory){
     
        string memory ans;
        if(age >=18){
            ans ="can vote";
        }else{
            ans ="can not vote";
        }
        return ans;
    }
}