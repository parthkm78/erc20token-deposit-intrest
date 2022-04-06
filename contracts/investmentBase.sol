// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

// Import Ownable from the OpenZeppelin Contracts library
import "@openzeppelin/contracts/access/Ownable.sol";
import "./InterfaceInvestmentBase.sol";

abstract contract InvestmentBase is Ownable, InvestmentBaseInterface  {
 
  uint16 [] terms;
  uint256 termDuration = 30 days;
  uint16 collateralTokenPercentage;
  // mappings
  mapping (uint16 => uint16) termDurationMapping;
  mapping(string => address) public whitelistedTokens;

  constructor(){}

  function depositTokens(uint256 _investmentAmount, string  memory _investmentToken, uint16 _collateralAmount, string memory _collateralToken, uint16 _term) virtual external;
  
  function addTerm(uint16 _term, uint16 _duration) public onlyOwner{
    termDurationMapping[_term] = _duration;
    terms.push(_term);
    emit newTerm(_term, _duration);
  }

  function getTermDetail(uint16 _term) public view returns( uint16 _duration){
    return termDurationMapping[_term];
  }

  function getTermDuration() public view returns( uint _duration){
    return termDuration;
  }

 function getAllTermDetail() public view returns( uint16[] memory _terms){
    return terms;
  }

  function whitelistToken(string memory symbol, address tokenAddress) external onlyOwner {
    whitelistedTokens[symbol] = tokenAddress;
  }

  function getWhitelistedTokenAddresses(string memory token) public view returns(address) {
    return whitelistedTokens[token];
  }

  // new fucntions
  function setTermDuration(uint256 _termDuration) public onlyOwner{
   termDuration = _termDuration;
  }

  function setCollateralTokenPercentage(uint16 _collateralTokenPercentage) public onlyOwner{
    collateralTokenPercentage = _collateralTokenPercentage;
  }

  function setTerms(uint16 [] memory _terms) public onlyOwner{
    terms = _terms;
  }
}