// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract day5 {
    uint256[3] public Array1 = [100, 200, 300];
    uint256[] public dynArray;

    function getArray() public view returns (uint256[3] memory) {
        return Array1;
    }

    function SetArrayWithIndex(uint256 index, uint256 value) public {
        Array1[index] = value;
    }

    function SetArray(uint256 value) public {
        Array1[2] = value;
    }

    function SetArrayAll(
        uint256 value1,
        uint256 value2,
        uint256 value3
    ) public {
        Array1[0] = value1;
        Array1[1] = value2;
        Array1[2] = value3;
    }

    function SetArrayAllWithArray(uint256[3] memory newArray) public {
        Array1 = newArray;
    }

    function getDynArray() public view returns (uint256[] memory) {
        return dynArray;
    }

    function setDymArray(uint256 element) public {
        dynArray.push(element);
    }

    function removeLastElmentDymArray() public {
        dynArray.pop();
    }

}
