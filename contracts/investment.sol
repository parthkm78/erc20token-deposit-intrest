// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/utils/math/Math.sol";
import "./investmentBase.sol";

contract investment is InvestmentBase {

  struct detail 
  {
      uint256 usdt;
      uint256 xtoken;
      uint16 term;
      uint termExpiry;
  }

  mapping(address => mapping(string => uint256)) public accountBalances;

  mapping(address => detail) public investmentMapping;

  constructor(uint256 _termDuration, uint16 _collateralTokenPercentage, uint16[] memory _terms)  {
  setTermDuration(_termDuration);
  setCollateralTokenPercentage(_collateralTokenPercentage);
  setTerms(_terms);
  }


  function depositTokens(uint256 _investmentAmount, string  memory _investmentToken, uint16 _collateralAmount, string memory _collateralToken, uint16 _term) override external {
     
    require(getTermDetail(_term)!=0, "Term not exists");
    
    address investmentTokenAddress = getWhitelistedTokenAddresses(_investmentToken);
    require(investmentTokenAddress!=address(0), "Investment Token token is not whitelisted");

    address collateralTokenAddress = getWhitelistedTokenAddresses(_collateralToken);
    require(collateralTokenAddress!=address(0), "Collateral Token token is not whitelisted");

    
    uint256  usdtTokenBal= ERC20(investmentTokenAddress).balanceOf(msg.sender);
    require(_investmentAmount <= usdtTokenBal, "Investment Token balance is low");
    
    uint256 requiredCollateralAmount = _collateralAmount/10;
    
    uint256 xTokenBal = ERC20(collateralTokenAddress).balanceOf(msg.sender);
    require(requiredCollateralAmount <= xTokenBal, "Collateral Token balance is low");
    
    investmentMapping[msg.sender].usdt += _investmentAmount;
    investmentMapping[msg.sender].xtoken += requiredCollateralAmount; 
    investmentMapping[msg.sender].term = _term;
    investmentMapping[msg.sender].termExpiry = block.timestamp + (_term * getTermDuration()) ;   

    ERC20(investmentTokenAddress).transferFrom(msg.sender, address(this), _investmentAmount);
    ERC20(collateralTokenAddress).transferFrom(msg.sender, address(this), requiredCollateralAmount);
  }

  function withdrawTokens(uint256 _amount, string memory _symbol) external {
    require(accountBalances[msg.sender][_symbol] >= _amount, 'Insufficent funds');

    accountBalances[msg.sender][_symbol] -= _amount;
    ERC20(getWhitelistedTokenAddresses(_symbol)).transfer(msg.sender, _amount);
  }

   function investmentInfo() public view returns(uint256 _usdt, uint256 _xtoken, uint16 _term, uint _termExpiry ) {
    return (investmentMapping[msg.sender].usdt, investmentMapping[msg.sender].xtoken, investmentMapping[msg.sender].term, investmentMapping[msg.sender].termExpiry);
  }
}