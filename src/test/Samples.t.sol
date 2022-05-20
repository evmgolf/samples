// SPDX-License-Identifier: BSD-3-Clause
pragma solidity 0.8.13;

import "forge-std/Test.sol";
import "../Samples.sol";

contract LogSizeTest is Test {
  function testLogSizeEmpty() public {
    emit log_named_uint("Empty", type(Empty).creationCode.length);
  }
  function testLogSizeIdentity() public {
    emit log_named_uint("Identity", type(Identity).creationCode.length);
  }
  function testLogSizeAdd() public {
    emit log_named_uint("Add", type(Add).creationCode.length);
  }
  function testLogSizeSub() public {
    emit log_named_uint("Sub", type(Sub).creationCode.length);
  }
  function testLogSizeReturnEth() public {
    emit log_named_uint("ReturnEth", type(ReturnEth).creationCode.length);
  }
}
