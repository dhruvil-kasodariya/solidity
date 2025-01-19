// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract Global {

      function getBlockNumber() public view returns (uint) {
        return block.number;
    }

      function getBlockCoinbase() public view returns (address) {
        return block.coinbase;
    }

      function getBlockDifficulty() public view returns (uint) {
        return block.difficulty;
    }

      function getBlockGaslimit() public view returns (uint) {
        return block.gaslimit;
    }

      function getBlockTimestamp() public view returns (uint) {
        return block.timestamp;
    }

      function getGasLeft() public view returns (uint) {
        return gasleft() ;
    }

      function getMessageData() public view returns (bytes calldata) {
        return msg.data;
    }

      function getMessageSender() public view returns (address) {
        return msg.sender;
    }

         function getMessageSig() public view returns (bytes4) {
        return msg.sig;
    }

      function getMessageGas() public view returns (uint) {
        return msg.value;
    }

    //  function getMessageData() public view returns (uint) {
    //     return msg.gas;
    // }
}