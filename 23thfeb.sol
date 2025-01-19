// SPDX-License-Identifier: MIT
pragma solidity 0.8.24;

contract day7 {
    uint256 public balance;

    function addBalance() public payable {
        balance += msg.value;
    }

    function getBalance() public view returns (uint256) {
        //return (balance / 10 ** 18)
        return (balance / 1 ether);
    }

    // function transferToAddress1(address to, uint256 amount) public {
    //     (bool sent, bytes memory data) = to.call{value: amount * 1 ether}("");
    //     require(sent, "error");
    //     balance -= amount;
    // }

    // function transferToAddress2(address to, uint256 amount) public {
    //     payable(to).transfer(amount);
    //     balance -= amount;
    // }

    function transferToAddress3(address to) public payable {
        payable(to).transfer(msg.value);
        balance -= msg.value;
    }

    function withdraw(uint amount) public  {
        payable (msg.sender).transfer(amount * 1 ether);
    }
}
