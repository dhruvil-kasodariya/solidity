// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract day4 {
    function canVote(int256 age) public pure returns (string memory) {
        //ternaria oprater
        return (age >= 18 ? "can Vote" : "can not Vote");
    }

    function loop1() public pure returns (uint256) {
        uint256 j;
        for (uint256 i = 0; i < 10; i++) {
            if(i==5){
                break ;
            }
            j++;
        }
        return j;
    }

    function loop2() public pure returns (uint256) {
        uint256 i;
        uint j;
        while (i < 10) {
            i++;
            if(i==5){
                continue ;
            }
            j++;
        }
        return i;
    }

    uint[3] public Arr1 =[100,200,300];

    function getArray() public view returns(uint[3] memory){
        return  Arr1;
    }


}
