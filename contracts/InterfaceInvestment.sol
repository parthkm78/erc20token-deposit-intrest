/**********************************************************************
 *
 * Author            : Parth Mehta
 *
 **********************************************************************
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * This is a Investment interface which has major features.
 */
interface InvestmentInterface{

  /**
    Add term interest rate
   */
  function addTermInterestRate(uint16 _term, uint256 _monthlyAPR, uint256 _yearlyAPY) external;
  /**
    get term interest rate
   */
  function getTermInterestRateDetail(uint16 _term) external view returns( uint256, uint256, bool);
  /**
    get Term duration
   */
  function getTermDuration() external view returns( uint _duration);
  /**
    get all term detail
   */
  function getAllTermDetail() external view returns( uint16[] memory _terms);
  /**
    add whitelist token
   */
  function whitelistToken(string memory symbol, address tokenAddress) external;
  /**
    get whitelist token address
   */
  function getWhitelistedTokenAddresses(string memory token) external view returns(address);
  /**
    deposite tokens
   */
  function depositTokens(uint256 _investmentAmount, string  memory _investmentToken, uint256 _collateralAmount, string memory _collateralToken, uint16 _term) external;
  /**
    check 'term' information exists
   */
  function isTermInterestRateExists(uint16 _term) external view returns(bool);
  /**
    withdraw token
   */
  function withdrawTokens() external;
  /**
    calculate interest on deposite token
   */
  function calculateInterest(uint256 _investmentAmount, uint16 _term) external view returns(uint256);
  
  // events
  /**
    when new term information is added
   */
  event newTermInterestRate(uint16 _term, uint256 _monthlyAPR, uint256 _yearlyAPY);
  /**
    when new token is whitelisted
   */
  event newhitelistToken(string _symbol, address tokenAddress);
  /**
    when user deposite tokens
   */
  event newDeposite (address _user,uint256 _investmentAmount, string  _investmentToken, uint256 _collateralAmount, string  _collateralToken, uint16 _term );
  /**
    when user wothdraw tokens
   */
  event newWithdraw(address user, uint256 _returnAmount, string  _investmentToken, uint256 _returnCollateralAmount, string  _collateralToken);
}