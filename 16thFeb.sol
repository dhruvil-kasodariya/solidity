// SPDX-License-Identifier: MIT
pragma solidity 0.8.20;

contract day2 {
    uint public  A;
    uint public  B;
    uint public C;

    function setterA(uint _a,uint _b) public  {
       A = _a;
       B = _b;
    }

    function addFun1() public {
      C =A+B;
    }

    function addFun2(uint a ,uint b) public {
         C =a+b;
    }

    function addFun3() public view returns(uint) {
        return A+B;
    }

    function addFun4(uint a,uint b) public pure returns (uint) {
         return a+b;
    }

    function getTime() public view returns (uint) {
        return block.timestamp;
    }
    
      function getBlockNumber() public view returns (uint) {
        return block.number;
    }
}