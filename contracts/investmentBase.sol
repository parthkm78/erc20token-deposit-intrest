/**********************************************************************
 *
 * Author            : Parth Mehta
 *
 **********************************************************************
 */

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import Ownable from the OpenZeppelin Contracts library
import "@openzeppelin/contracts/access/Ownable.sol";
import "./InterfaceInvestment.sol";
//import "@openzeppelin/contracts/utils/math/Math.sol";

/**
  This contract cotains base investment features
 */
abstract contract InvestmentBase is Ownable, InvestmentInterface  {
 
  // state variables
  uint16 [] terms;
  uint256 termDuration = 30 days;
  uint16 collateralTokenPercentage;
  uint16 interestRatDenominator;

  // store intrest rate APR & APY
  struct interestRate{
    uint256 monthlyAPR;
    uint256 yearlyAPY;
    bool isValue;
  }
 
  // mapping of smart contract address with  whitelisted token
  mapping(string => address) public whitelistedTokens;
  // mapping of term with interest details
  mapping(uint16 => interestRate) interestRateMapping;

  constructor(){}

  /**
    Add interest rate
    
    APR & APY
    
    @param _term The trem describe time period
            term represent number of months
    @param _monthlyAPR The Monthly APR - value should be as * 100
            example : rate is 2 % then inout should be 200
    @param _yearlyAPY Yearly APY - value should be as * 100
            example : rate is 2 % then inout should be 200
  */
   function addTermInterestRate(uint16 _term, uint256 _monthlyAPR, uint256 _yearlyAPY) override public onlyOwner{
     
     interestRateMapping[_term].monthlyAPR = _monthlyAPR;
     interestRateMapping[_term].yearlyAPY = _yearlyAPY;
     interestRateMapping[_term].isValue = true;
     terms.push(_term);
   }
  
  /**
    Get interest details based on Term
    
    @param _term The trem describe time period

    @return _term, _APR, _APY
  */
  function getTermInterestRateDetail(uint16 _term) override public view returns( uint256, uint256, bool){
    return (interestRateMapping[_term].monthlyAPR,interestRateMapping[_term].yearlyAPY, interestRateMapping[_term].isValue );
  }

  /**
    check term is exists or not
    
    @param _term The trem describe time period

    @return return boolean value
  */
 function isTermInterestRateExists(uint16 _term) override public view returns(bool){
    return (interestRateMapping[_term].isValue );
  }

  /**
    Get term duration

    @return _duration duration time
  */
  function getTermDuration() override public view returns( uint _duration){
    return termDuration;
  }

  /**
    Get all terms details

    @return _terms array of terms
  */
 function getAllTermDetail() override public view returns( uint16[] memory _terms){
    return terms;
  }

  /**
    whitelist token
    
    @param _symbol The token symbol
    @param _tokenAddress The token address
  */
  function whitelistToken(string memory _symbol, address _tokenAddress) override external onlyOwner {
    whitelistedTokens[_symbol] = _tokenAddress;
  }

  /**
    get whitelist token
    
    @param _token The token symbol

    @return address of smart contract of deployed token contract
  */
  function getWhitelistedTokenAddresses(string memory _token) override public view returns(address) {
    return whitelistedTokens[_token];
  }

  /**
    set term duration
    
    @param _termDuration The time period for one term
  */
  function setTermDuration(uint256 _termDuration) public onlyOwner{
   termDuration = _termDuration;
  }

  /**
    set Collateral Token Percentage
    
    @param _collateralTokenPercentage The percentage of collateral
  */
  function setCollateralTokenPercentage(uint16 _collateralTokenPercentage) public onlyOwner{
    collateralTokenPercentage = _collateralTokenPercentage;
  }

  /**
    set interest Rate Denominator
    
    @param _interestRatDenominator The percentage of collateral
  */
  function setInterestRateDenominator(uint16 _interestRatDenominator) public onlyOwner{
     interestRatDenominator = _interestRatDenominator;
   }

  /**
    calculate interest based on amount and time period
    In Solidity 0.8+ you don't need to use SafeMath anymore, because the integer underflow/overflow check is performed on a lower level.
    
    @param _investmentAmount The token invested
    @param _term The term period

    @return amount with interest
  */
   function calculateInterest(uint256 _investmentAmount, uint16 _term) override public view returns(uint256) {
        (uint256 apr, uint256 apy, bool isValue) =getTermInterestRateDetail(_term);
        require(isValue, "Term not exists");
      //  uint256 yearlyAPR = (apr*12);
       // uint256 totalPeriod = (12 * _term)/12;
        uint256 totalAmount= _investmentAmount;
         for (uint16 i=0;i<_term;i++) {
          totalAmount += totalAmount* apr/10000;
         }
        return totalAmount;
     }
}