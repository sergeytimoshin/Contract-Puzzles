//SPDX-License-Identifier: Unlicense
pragma solidity ^0.7.0;
import "hardhat/console.sol";

contract Game5 {
  bool public isWon;

  address threshold = 0x00FfFFfFFFfFFFFFfFfFfffFFFfffFfFffFfFFFf;

  function win() external {
    console.logBytes20(bytes20(threshold));
    require(bytes20(msg.sender) < bytes20(threshold), "Nope. Try again!");

    isWon = true;
  }
}
