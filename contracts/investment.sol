/**********************************************************************
 *
 * Author            : Parth Mehta
 *
 **********************************************************************
 */
 
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./investmentBase.sol";

/**
  This contract inherits InvestmentBase which have all base method implementations
  Main features are deposite and withdrawal 
 */
contract investment is InvestmentBase {

  /**
    This struct store inestment details
   */
  struct investmentDetail 
  {
      uint256 investmentAmount;
      string  investmentToken;
      uint256 collateralAmount;
      string collateralToken;
      uint16 term;
      uint256 termExpiry;
  }

  // map investment details againts user address
  mapping(address => investmentDetail) public investmentMapping;

  /**
    constructor to initialized required details
    @param _termDuration The term duration in days (days of month - ideal valus is 30 as 30 days count for month)

    @param _collateralTokenPercentage -  The perntage of collateral token required for investment
   */
  constructor(uint256 _termDuration, uint16 _collateralTokenPercentage)  {
    setTermDuration(_termDuration);
    setCollateralTokenPercentage(_collateralTokenPercentage);
   // setInterestRatDenominator(_denominator);
  }

  /**
    Deposite token
      1. investment token
      2. colateral token
    
    @param _investmentAmount The investment amount
    @param _investmentToken The investment token symbol
    @param _collateralAmount The collateral amount
    @param _collateralToken The collateral token symbol
    @param _term The term
  */
  function depositTokens(uint256 _investmentAmount, string  memory _investmentToken, uint256 _collateralAmount, string memory _collateralToken, uint16 _term) override external {
     
    (bool isValue) =isTermInterestRateExists(_term);
    // checl term is exists or not
    require(isValue, "Term not exists");
    
    address investmentTokenAddress = getWhitelistedTokenAddresses(_investmentToken);
    // check investment token is whitelisted or not
    require(investmentTokenAddress!=address(0), "Investment Token token is not whitelisted");

    address collateralTokenAddress = getWhitelistedTokenAddresses(_collateralToken);
    // check collateral token is whitelisted or not
    require(collateralTokenAddress!=address(0), "Collateral Token token is not whitelisted");

    uint256  investmentTokenBal= ERC20(investmentTokenAddress).balanceOf(msg.sender);
    //check balance of user's collateral token amount
    require(_investmentAmount <= investmentTokenBal, "Investment Token balance is low");
    
    // calculate collateral token amount
    uint256 requiredCollateralAmount = _investmentAmount * collateralTokenPercentage /100;
    
    uint256 collateralTokenBal = ERC20(collateralTokenAddress).balanceOf(msg.sender);
    //check balance of user's collateral token amount
    require(requiredCollateralAmount <= collateralTokenBal, "Collateral Token balance is low");
    
    // insert user's investment details
    investmentMapping[msg.sender].investmentAmount += _investmentAmount;
    investmentMapping[msg.sender].investmentToken = _investmentToken;
    investmentMapping[msg.sender].collateralAmount += requiredCollateralAmount; 
    investmentMapping[msg.sender].collateralToken = _collateralToken; 
    investmentMapping[msg.sender].term = _term;
    // calculate expiry with adding (term = month * term duration) to current timestamp
    investmentMapping[msg.sender].termExpiry = block.timestamp + (_term * getTermDuration() * 86400) ;   

    // transfer investment token to smart contract address
    //ERC20(investmentTokenAddress).approve(msg.sender, _investmentAmount);
    ERC20(investmentTokenAddress).transferFrom(msg.sender, address(this), _investmentAmount);
    // transfer _collateralAmount token to smart contract address
    //ERC20(investmentTokenAddress).approve(msg.sender, requiredCollateralAmount);
    ERC20(collateralTokenAddress).transferFrom(msg.sender, address(this), requiredCollateralAmount);
    
    // emit event
    emit  newDeposite (msg.sender, _investmentAmount, _investmentToken, _collateralAmount,  _collateralToken,  _term );
  }

   /**
    Withdraw token
      1. investment token + interest
      2. colateral token
  */
  function withdrawTokens() override external {
    
    // user can not withdraw before term duration expires
    require(investmentMapping[msg.sender].termExpiry < block.timestamp, 'Investment is locked. you can not withdraw untill term duration will get over');
    
    // fetch address of onvestment token
    address investmentTokenAddress = getWhitelistedTokenAddresses(investmentMapping[msg.sender].investmentToken);
    
    // fetch address of collateral token
    address collateralTokenAddress = getWhitelistedTokenAddresses(investmentMapping[msg.sender].collateralToken);
    
    uint256 totalAmount = calculateInterest(investmentMapping[msg.sender].investmentAmount, investmentMapping[msg.sender].term);
    // check smart contract have enough amount to send back investment token to user
    require(totalAmount <= ERC20(investmentTokenAddress).balanceOf(address(this)), "Investment Token balance is low");
    
    // check smart contract have enough amount to send back collateral token to user
    require(investmentMapping[msg.sender].collateralAmount <= ERC20(collateralTokenAddress).balanceOf(address(this)), "Collateral Token balance is low");
    
    // deduct investment token from user
    investmentMapping[msg.sender].investmentAmount -= investmentMapping[msg.sender].investmentAmount;
    ERC20(investmentTokenAddress).transfer(msg.sender, totalAmount);

    // deduct collateral token from user
    ERC20(collateralTokenAddress).transfer(msg.sender, investmentMapping[msg.sender].collateralAmount);
    investmentMapping[msg.sender].collateralAmount -= investmentMapping[msg.sender].collateralAmount; 

    // emit event
    emit newWithdraw(msg.sender, totalAmount, investmentMapping[msg.sender].investmentToken, investmentMapping[msg.sender].collateralAmount, investmentMapping[msg.sender].collateralToken);
  }

  /**
    fetch user's investment infomartion
    
    @return _investmentAmount The investment amount
    @return _investmentToken The investment token symbol
    @return _collateralAmount The collateral amount
    @return _collateralToken The collateral token symbol
    @return _term The term 
    @return _termExpiry The last day of term expiry
  */
   function investmentInfo() public view returns(uint256 _investmentAmount, string memory _investmentToken, uint256 _collateralAmount, string memory _collateralToken,uint16 _term, uint256 _termExpiry ) {
    return (investmentMapping[msg.sender].investmentAmount, investmentMapping[msg.sender].investmentToken, investmentMapping[msg.sender].collateralAmount, investmentMapping[msg.sender].collateralToken, investmentMapping[msg.sender].term, investmentMapping[msg.sender].termExpiry);
  }
}