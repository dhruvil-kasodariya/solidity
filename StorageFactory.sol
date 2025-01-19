// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

import {SimpleStorage} from "./SimpleStorage.sol";

contract StorageFactory{
    SimpleStorage[] public listOfSimpleStorageContracts;

    function createSimpleStorageContract() public {
        SimpleStorage newSimpleStorageContaract =new SimpleStorage();
        listOfSimpleStorageContracts.push(newSimpleStorageContaract);
    }

    function sfStore(uint256 _simpleStorageIndex,uint256 _newSimpleStorageNumber) public {
        //address
        //ABI
        listOfSimpleStorageContracts[_simpleStorageIndex].store(_newSimpleStorageNumber);
    }

    function sfGet(uint256 _simpleStorageIndex) public view returns(uint256){
        return listOfSimpleStorageContracts[_simpleStorageIndex].retrieve();
    }
}