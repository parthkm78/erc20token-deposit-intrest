// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import Ownable from the OpenZeppelin Contracts library

interface InvestmentBaseInterface{

  function addTerm(uint16 _term, uint16 _duration) external;

  function getTermDetail(uint16 _term) external view returns( uint16 _duration);

  function getTermDuration() external view returns( uint _duration);

  function getAllTermDetail() external view returns( uint16[] memory _terms);

  function whitelistToken(string memory symbol, address tokenAddress) external;

  function getWhitelistedTokenAddresses(string memory token) external view returns(address);

  // events
  event newTerm(uint16 _term, uint16 _duration);
}