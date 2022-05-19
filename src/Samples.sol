// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;

contract Empty {}
contract Identity {
  function identity (uint a) public pure returns (uint) {
    return a;
  }
}

contract Add {
  function add (uint a, uint b) public pure returns (uint) {
    return a + b;
  }
}

contract Sub {
  function sub (uint a, uint b) public pure returns (uint) {
    return a - b;
  }
}

contract ReturnEth {
  receive () external payable {
    payable(msg.sender).transfer(msg.value);
  }
}

