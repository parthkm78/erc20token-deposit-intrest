/**********************************************************************
 *
 * Author            : Parth Mehta
 *
 **********************************************************************
 */
 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

/**
  USDT contract
 */
contract USDT is ERC20 {
  constructor() ERC20("usdt", 'usdt') {
    _mint(msg.sender, 10000000);
  }
}