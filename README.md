# erc20token-deposit-intrest
This repo contain smart contract for erc20 token deposite interest.

=> There are two types of token.
1. Investment Token
2. Collateral Token

=> Here I have created 2 ERC contract and name as USDT(Investment token) and XTOKEN (collateral) for better understanding. but you can use onlly one erc20 contract and change name ans symbole while deployment

=> **There is no token is hardcoded in smart contract. so you can use any token as '**Investment'** & **'Collateral'** Token.**

=>You have to use '**whitelistToken**' method to whitelist tokens.

![image](https://user-images.githubusercontent.com/51226907/162268024-fb82a743-88fe-4411-a792-ed6850f75ecd.png)


=> You have to give below fileds input while deploying investment.sol.
1. _termDuration - The term duration in days (days of month - ideal valus is 30 as 30 days count for month)
2. _collateralTokenPercentage -  The perntage of collateral token required for investment

![image](https://user-images.githubusercontent.com/51226907/162268313-6ef27011-7091-48c4-802d-5a88602a7a82.png)


=> You can add term interestrate by '**addTermInterestRate**' function.
1. _term The trem describe time period.term represent number of months
2. _monthlyAPR The Monthly APR - value should be as * 100. example : rate is 2 % then inout should be 200.
3. _yearlyAPY Yearly APY - value should be as * 100. example : rate is 2 % then inout should be 200

![image](https://user-images.githubusercontent.com/51226907/162269050-5fa723ba-49e5-4d5b-8853-1dd8af249857.png)


=> **first task for every user is you have to approve address of smart contract to smart contract of tokens (investment & collateral)**
_Note : This will be automatically sone via smart contract in next commit._

![image](https://user-images.githubusercontent.com/51226907/162269487-8736d1a6-780c-46f2-a569-3b426488b96a.png)

=> Now you can **deposite** tokens. 
