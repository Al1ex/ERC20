# Blue Whale ERC20 Token

The official repository for ERC20 tokens in Blue Whale Foundation.

## Summary

The Blue Whale Token(hereinafter referred to as 'BWX') contains standard  [ERC-20 functions](https://en.wikipedia.org/wiki/ERC-20) using openzeppelin-solidity library.

### Functions

#### `openzeppelin/ERC20.sol`

This contract contains following functions:

- `totalSupply`
- `balanceOf`
- `allowance`
- `transfer`
- `approve`
- `transferFrom`
- `increaseAllowance`
- `decreaseAllowance`

By default, the `ERC20.sol` contract includes internal functions such as `_burn` and `_mint` but, The BWX Token only uses the `_mint` function to provide the token owner for initial supply.

#### `openzeppelin/ERC20Detailed.sol`

This contract contains basic token infromation such as `name`, `symbol`, `decimals`.

#### `openzeppelin/Ownable.sol`

The `Ownable.sol` contract provides a modifier `onlyOwner` to grant permissions to the contract creator (`msg.sender`)

In BWX, the onlyOwner is only used in the `withdrawERC20Token` function.

#### `BWToken.sol`

`BWToken.sol` simply implements `constructor` and `withdrawERC20Token`.
`constructor` inherits the above openzeppelin contract.

`withdrawERC20Token` provides a feature to withdraw another ERC20 token that exists within BWX contract.

## License

[MIT License](LICENSE).