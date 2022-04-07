├─ type: SourceUnit
└─ children
   ├─ 0
   │  ├─ type: PragmaDirective
   │  ├─ name: solidity
   │  └─ value: ^0.8.0
   ├─ 1
   │  ├─ type: ImportDirective
   │  ├─ path: @openzeppelin/contracts/access/Ownable.sol
   │  ├─ pathLiteral
   │  │  ├─ type: StringLiteral
   │  │  ├─ value: @openzeppelin/contracts/access/Ownable.sol
   │  │  ├─ parts
   │  │  │  └─ 0: @openzeppelin/contracts/access/Ownable.sol
   │  │  └─ isUnicode
   │  │     └─ 0: false
   │  ├─ unitAlias
   │  ├─ unitAliasIdentifier
   │  ├─ symbolAliases
   │  └─ symbolAliasesIdentifiers
   ├─ 2
   │  ├─ type: ImportDirective
   │  ├─ path: ./InterfaceInvestment.sol
   │  ├─ pathLiteral
   │  │  ├─ type: StringLiteral
   │  │  ├─ value: ./InterfaceInvestment.sol
   │  │  ├─ parts
   │  │  │  └─ 0: ./InterfaceInvestment.sol
   │  │  └─ isUnicode
   │  │     └─ 0: false
   │  ├─ unitAlias
   │  ├─ unitAliasIdentifier
   │  ├─ symbolAliases
   │  └─ symbolAliasesIdentifiers
   └─ 3
      ├─ type: ContractDefinition
      ├─ name: InvestmentBase
      ├─ baseContracts
      │  ├─ 0
      │  │  ├─ type: InheritanceSpecifier
      │  │  ├─ baseName
      │  │  │  ├─ type: UserDefinedTypeName
      │  │  │  └─ namePath: Ownable
      │  │  └─ arguments
      │  └─ 1
      │     ├─ type: InheritanceSpecifier
      │     ├─ baseName
      │     │  ├─ type: UserDefinedTypeName
      │     │  └─ namePath: InvestmentInterface
      │     └─ arguments
      ├─ subNodes
      │  ├─ 0
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ArrayTypeName
      │  │  │     │  ├─ baseTypeName
      │  │  │     │  │  ├─ type: ElementaryTypeName
      │  │  │     │  │  ├─ name: uint16
      │  │  │     │  │  └─ stateMutability
      │  │  │     │  └─ length
      │  │  │     ├─ name: terms
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: terms
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: default
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 1
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: termDuration
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: termDuration
      │  │  │     ├─ expression
      │  │  │     │  ├─ type: NumberLiteral
      │  │  │     │  ├─ number: 30
      │  │  │     │  └─ subdenomination: days
      │  │  │     ├─ visibility: default
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  │     ├─ type: NumberLiteral
      │  │     ├─ number: 30
      │  │     └─ subdenomination: days
      │  ├─ 2
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint16
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: collateralTokenPercentage
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: collateralTokenPercentage
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: default
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 3
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint16
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: interestRatDenominator
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: interestRatDenominator
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: default
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 4
      │  │  ├─ type: StructDefinition
      │  │  ├─ name: interestRate
      │  │  └─ members
      │  │     ├─ 0
      │  │     │  ├─ type: VariableDeclaration
      │  │     │  ├─ typeName
      │  │     │  │  ├─ type: ElementaryTypeName
      │  │     │  │  ├─ name: uint256
      │  │     │  │  └─ stateMutability
      │  │     │  ├─ name: monthlyAPR
      │  │     │  ├─ identifier
      │  │     │  │  ├─ type: Identifier
      │  │     │  │  └─ name: monthlyAPR
      │  │     │  ├─ storageLocation
      │  │     │  ├─ isStateVar: false
      │  │     │  ├─ isIndexed: false
      │  │     │  └─ expression
      │  │     ├─ 1
      │  │     │  ├─ type: VariableDeclaration
      │  │     │  ├─ typeName
      │  │     │  │  ├─ type: ElementaryTypeName
      │  │     │  │  ├─ name: uint256
      │  │     │  │  └─ stateMutability
      │  │     │  ├─ name: yearlyAPY
      │  │     │  ├─ identifier
      │  │     │  │  ├─ type: Identifier
      │  │     │  │  └─ name: yearlyAPY
      │  │     │  ├─ storageLocation
      │  │     │  ├─ isStateVar: false
      │  │     │  ├─ isIndexed: false
      │  │     │  └─ expression
      │  │     └─ 2
      │  │        ├─ type: VariableDeclaration
      │  │        ├─ typeName
      │  │        │  ├─ type: ElementaryTypeName
      │  │        │  ├─ name: bool
      │  │        │  └─ stateMutability
      │  │        ├─ name: isValue
      │  │        ├─ identifier
      │  │        │  ├─ type: Identifier
      │  │        │  └─ name: isValue
      │  │        ├─ storageLocation
      │  │        ├─ isStateVar: false
      │  │        ├─ isIndexed: false
      │  │        └─ expression
      │  ├─ 5
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: Mapping
      │  │  │     │  ├─ keyType
      │  │  │     │  │  ├─ type: ElementaryTypeName
      │  │  │     │  │  ├─ name: string
      │  │  │     │  │  └─ stateMutability
      │  │  │     │  └─ valueType
      │  │  │     │     ├─ type: ElementaryTypeName
      │  │  │     │     ├─ name: address
      │  │  │     │     └─ stateMutability
      │  │  │     ├─ name: whitelistedTokens
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: whitelistedTokens
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: public
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 6
      │  │  ├─ type: StateVariableDeclaration
      │  │  ├─ variables
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: Mapping
      │  │  │     │  ├─ keyType
      │  │  │     │  │  ├─ type: ElementaryTypeName
      │  │  │     │  │  ├─ name: uint16
      │  │  │     │  │  └─ stateMutability
      │  │  │     │  └─ valueType
      │  │  │     │     ├─ type: UserDefinedTypeName
      │  │  │     │     └─ namePath: interestRate
      │  │  │     ├─ name: interestRateMapping
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: interestRateMapping
      │  │  │     ├─ expression
      │  │  │     ├─ visibility: default
      │  │  │     ├─ isStateVar: true
      │  │  │     ├─ isDeclaredConst: false
      │  │  │     ├─ isIndexed: false
      │  │  │     ├─ isImmutable: false
      │  │  │     ├─ override
      │  │  │     └─ storageLocation
      │  │  └─ initialValue
      │  ├─ 7
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name
      │  │  ├─ parameters
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  ├─ visibility: default
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: true
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 8
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: addTermInterestRate
      │  │  ├─ parameters
      │  │  │  ├─ 0
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: ElementaryTypeName
      │  │  │  │  │  ├─ name: uint16
      │  │  │  │  │  └─ stateMutability
      │  │  │  │  ├─ name: _term
      │  │  │  │  ├─ identifier
      │  │  │  │  │  ├─ type: Identifier
      │  │  │  │  │  └─ name: _term
      │  │  │  │  ├─ storageLocation
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  ├─ 1
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: ElementaryTypeName
      │  │  │  │  │  ├─ name: uint256
      │  │  │  │  │  └─ stateMutability
      │  │  │  │  ├─ name: _monthlyAPR
      │  │  │  │  ├─ identifier
      │  │  │  │  │  ├─ type: Identifier
      │  │  │  │  │  └─ name: _monthlyAPR
      │  │  │  │  ├─ storageLocation
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  └─ 2
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _yearlyAPY
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _yearlyAPY
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     ├─ 0
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: IndexAccess
      │  │  │     │     │  │  ├─ base
      │  │  │     │     │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  └─ name: interestRateMapping
      │  │  │     │     │  │  └─ index
      │  │  │     │     │  │     ├─ type: Identifier
      │  │  │     │     │  │     └─ name: _term
      │  │  │     │     │  └─ memberName: monthlyAPR
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: _monthlyAPR
      │  │  │     ├─ 1
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: IndexAccess
      │  │  │     │     │  │  ├─ base
      │  │  │     │     │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  └─ name: interestRateMapping
      │  │  │     │     │  │  └─ index
      │  │  │     │     │  │     ├─ type: Identifier
      │  │  │     │     │  │     └─ name: _term
      │  │  │     │     │  └─ memberName: yearlyAPY
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: Identifier
      │  │  │     │        └─ name: _yearlyAPY
      │  │  │     ├─ 2
      │  │  │     │  ├─ type: ExpressionStatement
      │  │  │     │  └─ expression
      │  │  │     │     ├─ type: BinaryOperation
      │  │  │     │     ├─ operator: =
      │  │  │     │     ├─ left
      │  │  │     │     │  ├─ type: MemberAccess
      │  │  │     │     │  ├─ expression
      │  │  │     │     │  │  ├─ type: IndexAccess
      │  │  │     │     │  │  ├─ base
      │  │  │     │     │  │  │  ├─ type: Identifier
      │  │  │     │     │  │  │  └─ name: interestRateMapping
      │  │  │     │     │  │  └─ index
      │  │  │     │     │  │     ├─ type: Identifier
      │  │  │     │     │  │     └─ name: _term
      │  │  │     │     │  └─ memberName: isValue
      │  │  │     │     └─ right
      │  │  │     │        ├─ type: BooleanLiteral
      │  │  │     │        └─ value: true
      │  │  │     └─ 3
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: FunctionCall
      │  │  │           ├─ expression
      │  │  │           │  ├─ type: MemberAccess
      │  │  │           │  ├─ expression
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: terms
      │  │  │           │  └─ memberName: push
      │  │  │           ├─ arguments
      │  │  │           │  └─ 0
      │  │  │           │     ├─ type: Identifier
      │  │  │           │     └─ name: _term
      │  │  │           ├─ names
      │  │  │           └─ identifiers
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  │  └─ 0
      │  │  │     ├─ type: ModifierInvocation
      │  │  │     ├─ name: onlyOwner
      │  │  │     └─ arguments
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 9
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: getTermInterestRateDetail
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint16
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _term
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _term
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  │  ├─ 0
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: ElementaryTypeName
      │  │  │  │  │  ├─ name: uint256
      │  │  │  │  │  └─ stateMutability
      │  │  │  │  ├─ name
      │  │  │  │  ├─ identifier
      │  │  │  │  ├─ storageLocation
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  ├─ 1
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: ElementaryTypeName
      │  │  │  │  │  ├─ name: uint256
      │  │  │  │  │  └─ stateMutability
      │  │  │  │  ├─ name
      │  │  │  │  ├─ identifier
      │  │  │  │  ├─ storageLocation
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  └─ 2
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bool
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name
      │  │  │     ├─ identifier
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: TupleExpression
      │  │  │           ├─ components
      │  │  │           │  ├─ 0
      │  │  │           │  │  ├─ type: MemberAccess
      │  │  │           │  │  ├─ expression
      │  │  │           │  │  │  ├─ type: IndexAccess
      │  │  │           │  │  │  ├─ base
      │  │  │           │  │  │  │  ├─ type: Identifier
      │  │  │           │  │  │  │  └─ name: interestRateMapping
      │  │  │           │  │  │  └─ index
      │  │  │           │  │  │     ├─ type: Identifier
      │  │  │           │  │  │     └─ name: _term
      │  │  │           │  │  └─ memberName: monthlyAPR
      │  │  │           │  ├─ 1
      │  │  │           │  │  ├─ type: MemberAccess
      │  │  │           │  │  ├─ expression
      │  │  │           │  │  │  ├─ type: IndexAccess
      │  │  │           │  │  │  ├─ base
      │  │  │           │  │  │  │  ├─ type: Identifier
      │  │  │           │  │  │  │  └─ name: interestRateMapping
      │  │  │           │  │  │  └─ index
      │  │  │           │  │  │     ├─ type: Identifier
      │  │  │           │  │  │     └─ name: _term
      │  │  │           │  │  └─ memberName: yearlyAPY
      │  │  │           │  └─ 2
      │  │  │           │     ├─ type: MemberAccess
      │  │  │           │     ├─ expression
      │  │  │           │     │  ├─ type: IndexAccess
      │  │  │           │     │  ├─ base
      │  │  │           │     │  │  ├─ type: Identifier
      │  │  │           │     │  │  └─ name: interestRateMapping
      │  │  │           │     │  └─ index
      │  │  │           │     │     ├─ type: Identifier
      │  │  │           │     │     └─ name: _term
      │  │  │           │     └─ memberName: isValue
      │  │  │           └─ isArray: false
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: view
      │  ├─ 10
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: isTermInterestRateExists
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint16
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _term
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _term
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: bool
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name
      │  │  │     ├─ identifier
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: TupleExpression
      │  │  │           ├─ components
      │  │  │           │  └─ 0
      │  │  │           │     ├─ type: MemberAccess
      │  │  │           │     ├─ expression
      │  │  │           │     │  ├─ type: IndexAccess
      │  │  │           │     │  ├─ base
      │  │  │           │     │  │  ├─ type: Identifier
      │  │  │           │     │  │  └─ name: interestRateMapping
      │  │  │           │     │  └─ index
      │  │  │           │     │     ├─ type: Identifier
      │  │  │           │     │     └─ name: _term
      │  │  │           │     └─ memberName: isValue
      │  │  │           └─ isArray: false
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: view
      │  ├─ 11
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: getTermDuration
      │  │  ├─ parameters
      │  │  ├─ returnParameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _duration
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _duration
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: Identifier
      │  │  │           └─ name: termDuration
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: view
      │  ├─ 12
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: getAllTermDetail
      │  │  ├─ parameters
      │  │  ├─ returnParameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ArrayTypeName
      │  │  │     │  ├─ baseTypeName
      │  │  │     │  │  ├─ type: ElementaryTypeName
      │  │  │     │  │  ├─ name: uint16
      │  │  │     │  │  └─ stateMutability
      │  │  │     │  └─ length
      │  │  │     ├─ name: _terms
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _terms
      │  │  │     ├─ storageLocation: memory
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: Identifier
      │  │  │           └─ name: terms
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: view
      │  ├─ 13
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: whitelistToken
      │  │  ├─ parameters
      │  │  │  ├─ 0
      │  │  │  │  ├─ type: VariableDeclaration
      │  │  │  │  ├─ typeName
      │  │  │  │  │  ├─ type: ElementaryTypeName
      │  │  │  │  │  ├─ name: string
      │  │  │  │  │  └─ stateMutability
      │  │  │  │  ├─ name: _symbol
      │  │  │  │  ├─ identifier
      │  │  │  │  │  ├─ type: Identifier
      │  │  │  │  │  └─ name: _symbol
      │  │  │  │  ├─ storageLocation: memory
      │  │  │  │  ├─ isStateVar: false
      │  │  │  │  ├─ isIndexed: false
      │  │  │  │  └─ expression
      │  │  │  └─ 1
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: address
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _tokenAddress
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _tokenAddress
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: BinaryOperation
      │  │  │           ├─ operator: =
      │  │  │           ├─ left
      │  │  │           │  ├─ type: IndexAccess
      │  │  │           │  ├─ base
      │  │  │           │  │  ├─ type: Identifier
      │  │  │           │  │  └─ name: whitelistedTokens
      │  │  │           │  └─ index
      │  │  │           │     ├─ type: Identifier
      │  │  │           │     └─ name: _symbol
      │  │  │           └─ right
      │  │  │              ├─ type: Identifier
      │  │  │              └─ name: _tokenAddress
      │  │  ├─ visibility: external
      │  │  ├─ modifiers
      │  │  │  └─ 0
      │  │  │     ├─ type: ModifierInvocation
      │  │  │     ├─ name: onlyOwner
      │  │  │     └─ arguments
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 14
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: getWhitelistedTokenAddresses
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: string
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _token
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _token
      │  │  │     ├─ storageLocation: memory
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: address
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name
      │  │  │     ├─ identifier
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ReturnStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: IndexAccess
      │  │  │           ├─ base
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: whitelistedTokens
      │  │  │           └─ index
      │  │  │              ├─ type: Identifier
      │  │  │              └─ name: _token
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability: view
      │  ├─ 15
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: setTermDuration
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint256
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _termDuration
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _termDuration
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: BinaryOperation
      │  │  │           ├─ operator: =
      │  │  │           ├─ left
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: termDuration
      │  │  │           └─ right
      │  │  │              ├─ type: Identifier
      │  │  │              └─ name: _termDuration
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  │  └─ 0
      │  │  │     ├─ type: ModifierInvocation
      │  │  │     ├─ name: onlyOwner
      │  │  │     └─ arguments
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 16
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: setCollateralTokenPercentage
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint16
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _collateralTokenPercentage
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _collateralTokenPercentage
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: BinaryOperation
      │  │  │           ├─ operator: =
      │  │  │           ├─ left
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: collateralTokenPercentage
      │  │  │           └─ right
      │  │  │              ├─ type: Identifier
      │  │  │              └─ name: _collateralTokenPercentage
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  │  └─ 0
      │  │  │     ├─ type: ModifierInvocation
      │  │  │     ├─ name: onlyOwner
      │  │  │     └─ arguments
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  ├─ 17
      │  │  ├─ type: FunctionDefinition
      │  │  ├─ name: setInterestRateDenominator
      │  │  ├─ parameters
      │  │  │  └─ 0
      │  │  │     ├─ type: VariableDeclaration
      │  │  │     ├─ typeName
      │  │  │     │  ├─ type: ElementaryTypeName
      │  │  │     │  ├─ name: uint16
      │  │  │     │  └─ stateMutability
      │  │  │     ├─ name: _interestRatDenominator
      │  │  │     ├─ identifier
      │  │  │     │  ├─ type: Identifier
      │  │  │     │  └─ name: _interestRatDenominator
      │  │  │     ├─ storageLocation
      │  │  │     ├─ isStateVar: false
      │  │  │     ├─ isIndexed: false
      │  │  │     └─ expression
      │  │  ├─ returnParameters
      │  │  ├─ body
      │  │  │  ├─ type: Block
      │  │  │  └─ statements
      │  │  │     └─ 0
      │  │  │        ├─ type: ExpressionStatement
      │  │  │        └─ expression
      │  │  │           ├─ type: BinaryOperation
      │  │  │           ├─ operator: =
      │  │  │           ├─ left
      │  │  │           │  ├─ type: Identifier
      │  │  │           │  └─ name: interestRatDenominator
      │  │  │           └─ right
      │  │  │              ├─ type: Identifier
      │  │  │              └─ name: _interestRatDenominator
      │  │  ├─ visibility: public
      │  │  ├─ modifiers
      │  │  │  └─ 0
      │  │  │     ├─ type: ModifierInvocation
      │  │  │     ├─ name: onlyOwner
      │  │  │     └─ arguments
      │  │  ├─ override
      │  │  ├─ isConstructor: false
      │  │  ├─ isReceiveEther: false
      │  │  ├─ isFallback: false
      │  │  ├─ isVirtual: false
      │  │  └─ stateMutability
      │  └─ 18
      │     ├─ type: FunctionDefinition
      │     ├─ name: calculateInterest
      │     ├─ parameters
      │     │  ├─ 0
      │     │  │  ├─ type: VariableDeclaration
      │     │  │  ├─ typeName
      │     │  │  │  ├─ type: ElementaryTypeName
      │     │  │  │  ├─ name: uint256
      │     │  │  │  └─ stateMutability
      │     │  │  ├─ name: _investmentAmount
      │     │  │  ├─ identifier
      │     │  │  │  ├─ type: Identifier
      │     │  │  │  └─ name: _investmentAmount
      │     │  │  ├─ storageLocation
      │     │  │  ├─ isStateVar: false
      │     │  │  ├─ isIndexed: false
      │     │  │  └─ expression
      │     │  └─ 1
      │     │     ├─ type: VariableDeclaration
      │     │     ├─ typeName
      │     │     │  ├─ type: ElementaryTypeName
      │     │     │  ├─ name: uint16
      │     │     │  └─ stateMutability
      │     │     ├─ name: _term
      │     │     ├─ identifier
      │     │     │  ├─ type: Identifier
      │     │     │  └─ name: _term
      │     │     ├─ storageLocation
      │     │     ├─ isStateVar: false
      │     │     ├─ isIndexed: false
      │     │     └─ expression
      │     ├─ returnParameters
      │     │  └─ 0
      │     │     ├─ type: VariableDeclaration
      │     │     ├─ typeName
      │     │     │  ├─ type: ElementaryTypeName
      │     │     │  ├─ name: uint256
      │     │     │  └─ stateMutability
      │     │     ├─ name
      │     │     ├─ identifier
      │     │     ├─ storageLocation
      │     │     ├─ isStateVar: false
      │     │     ├─ isIndexed: false
      │     │     └─ expression
      │     ├─ body
      │     │  ├─ type: Block
      │     │  └─ statements
      │     │     ├─ 0
      │     │     │  ├─ type: VariableDeclarationStatement
      │     │     │  ├─ variables
      │     │     │  │  ├─ 0
      │     │     │  │  │  ├─ type: VariableDeclaration
      │     │     │  │  │  ├─ name: apr
      │     │     │  │  │  ├─ identifier
      │     │     │  │  │  │  ├─ type: Identifier
      │     │     │  │  │  │  └─ name: apr
      │     │     │  │  │  ├─ typeName
      │     │     │  │  │  │  ├─ type: ElementaryTypeName
      │     │     │  │  │  │  ├─ name: uint256
      │     │     │  │  │  │  └─ stateMutability
      │     │     │  │  │  ├─ storageLocation
      │     │     │  │  │  ├─ isStateVar: false
      │     │     │  │  │  ├─ isIndexed: false
      │     │     │  │  │  └─ expression
      │     │     │  │  ├─ 1
      │     │     │  │  │  ├─ type: VariableDeclaration
      │     │     │  │  │  ├─ name: apy
      │     │     │  │  │  ├─ identifier
      │     │     │  │  │  │  ├─ type: Identifier
      │     │     │  │  │  │  └─ name: apy
      │     │     │  │  │  ├─ typeName
      │     │     │  │  │  │  ├─ type: ElementaryTypeName
      │     │     │  │  │  │  ├─ name: uint256
      │     │     │  │  │  │  └─ stateMutability
      │     │     │  │  │  ├─ storageLocation
      │     │     │  │  │  ├─ isStateVar: false
      │     │     │  │  │  ├─ isIndexed: false
      │     │     │  │  │  └─ expression
      │     │     │  │  └─ 2
      │     │     │  │     ├─ type: VariableDeclaration
      │     │     │  │     ├─ name: isValue
      │     │     │  │     ├─ identifier
      │     │     │  │     │  ├─ type: Identifier
      │     │     │  │     │  └─ name: isValue
      │     │     │  │     ├─ typeName
      │     │     │  │     │  ├─ type: ElementaryTypeName
      │     │     │  │     │  ├─ name: bool
      │     │     │  │     │  └─ stateMutability
      │     │     │  │     ├─ storageLocation
      │     │     │  │     ├─ isStateVar: false
      │     │     │  │     ├─ isIndexed: false
      │     │     │  │     └─ expression
      │     │     │  └─ initialValue
      │     │     │     ├─ type: FunctionCall
      │     │     │     ├─ expression
      │     │     │     │  ├─ type: Identifier
      │     │     │     │  └─ name: getTermInterestRateDetail
      │     │     │     ├─ arguments
      │     │     │     │  └─ 0
      │     │     │     │     ├─ type: Identifier
      │     │     │     │     └─ name: _term
      │     │     │     ├─ names
      │     │     │     └─ identifiers
      │     │     ├─ 1
      │     │     │  ├─ type: ExpressionStatement
      │     │     │  └─ expression
      │     │     │     ├─ type: FunctionCall
      │     │     │     ├─ expression
      │     │     │     │  ├─ type: Identifier
      │     │     │     │  └─ name: require
      │     │     │     ├─ arguments
      │     │     │     │  ├─ 0
      │     │     │     │  │  ├─ type: Identifier
      │     │     │     │  │  └─ name: isValue
      │     │     │     │  └─ 1
      │     │     │     │     ├─ type: StringLiteral
      │     │     │     │     ├─ value: Term not exists
      │     │     │     │     ├─ parts
      │     │     │     │     │  └─ 0: Term not exists
      │     │     │     │     └─ isUnicode
      │     │     │     │        └─ 0: false
      │     │     │     ├─ names
      │     │     │     └─ identifiers
      │     │     ├─ 2
      │     │     │  ├─ type: VariableDeclarationStatement
      │     │     │  ├─ variables
      │     │     │  │  └─ 0
      │     │     │  │     ├─ type: VariableDeclaration
      │     │     │  │     ├─ typeName
      │     │     │  │     │  ├─ type: ElementaryTypeName
      │     │     │  │     │  ├─ name: uint256
      │     │     │  │     │  └─ stateMutability
      │     │     │  │     ├─ name: totalAmount
      │     │     │  │     ├─ identifier
      │     │     │  │     │  ├─ type: Identifier
      │     │     │  │     │  └─ name: totalAmount
      │     │     │  │     ├─ storageLocation
      │     │     │  │     ├─ isStateVar: false
      │     │     │  │     ├─ isIndexed: false
      │     │     │  │     └─ expression
      │     │     │  └─ initialValue
      │     │     │     ├─ type: Identifier
      │     │     │     └─ name: _investmentAmount
      │     │     ├─ 3
      │     │     │  ├─ type: ForStatement
      │     │     │  ├─ initExpression
      │     │     │  │  ├─ type: VariableDeclarationStatement
      │     │     │  │  ├─ variables
      │     │     │  │  │  └─ 0
      │     │     │  │  │     ├─ type: VariableDeclaration
      │     │     │  │  │     ├─ typeName
      │     │     │  │  │     │  ├─ type: ElementaryTypeName
      │     │     │  │  │     │  ├─ name: uint16
      │     │     │  │  │     │  └─ stateMutability
      │     │     │  │  │     ├─ name: i
      │     │     │  │  │     ├─ identifier
      │     │     │  │  │     │  ├─ type: Identifier
      │     │     │  │  │     │  └─ name: i
      │     │     │  │  │     ├─ storageLocation
      │     │     │  │  │     ├─ isStateVar: false
      │     │     │  │  │     ├─ isIndexed: false
      │     │     │  │  │     └─ expression
      │     │     │  │  └─ initialValue
      │     │     │  │     ├─ type: NumberLiteral
      │     │     │  │     ├─ number: 0
      │     │     │  │     └─ subdenomination
      │     │     │  ├─ conditionExpression
      │     │     │  │  ├─ type: BinaryOperation
      │     │     │  │  ├─ operator: <
      │     │     │  │  ├─ left
      │     │     │  │  │  ├─ type: Identifier
      │     │     │  │  │  └─ name: i
      │     │     │  │  └─ right
      │     │     │  │     ├─ type: Identifier
      │     │     │  │     └─ name: _term
      │     │     │  ├─ loopExpression
      │     │     │  │  ├─ type: ExpressionStatement
      │     │     │  │  └─ expression
      │     │     │  │     ├─ type: UnaryOperation
      │     │     │  │     ├─ operator: ++
      │     │     │  │     ├─ subExpression
      │     │     │  │     │  ├─ type: Identifier
      │     │     │  │     │  └─ name: i
      │     │     │  │     └─ isPrefix: false
      │     │     │  └─ body
      │     │     │     ├─ type: Block
      │     │     │     └─ statements
      │     │     │        └─ 0
      │     │     │           ├─ type: ExpressionStatement
      │     │     │           └─ expression
      │     │     │              ├─ type: BinaryOperation
      │     │     │              ├─ operator: +=
      │     │     │              ├─ left
      │     │     │              │  ├─ type: Identifier
      │     │     │              │  └─ name: totalAmount
      │     │     │              └─ right
      │     │     │                 ├─ type: BinaryOperation
      │     │     │                 ├─ operator: /
      │     │     │                 ├─ left
      │     │     │                 │  ├─ type: BinaryOperation
      │     │     │                 │  ├─ operator: *
      │     │     │                 │  ├─ left
      │     │     │                 │  │  ├─ type: Identifier
      │     │     │                 │  │  └─ name: totalAmount
      │     │     │                 │  └─ right
      │     │     │                 │     ├─ type: Identifier
      │     │     │                 │     └─ name: apr
      │     │     │                 └─ right
      │     │     │                    ├─ type: NumberLiteral
      │     │     │                    ├─ number: 10000
      │     │     │                    └─ subdenomination
      │     │     └─ 4
      │     │        ├─ type: ReturnStatement
      │     │        └─ expression
      │     │           ├─ type: Identifier
      │     │           └─ name: totalAmount
      │     ├─ visibility: public
      │     ├─ modifiers
      │     ├─ override
      │     ├─ isConstructor: false
      │     ├─ isReceiveEther: false
      │     ├─ isFallback: false
      │     ├─ isVirtual: false
      │     └─ stateMutability: view
      └─ kind: abstract
