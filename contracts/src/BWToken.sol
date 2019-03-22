/**
 * Copyright 2018 Bluewhale Foundation.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

pragma solidity ^0.5.2;

import "../../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20.sol";
import "../../node_modules/openzeppelin-solidity/contracts/token/ERC20/ERC20Detailed.sol";
import "../../node_modules/openzeppelin-solidity/contracts/ownership/Ownable.sol";

import "./ITransferable.sol";

contract BWToken is ERC20, ERC20Detailed, Ownable {
    constructor(
        string memory name,
        string memory symbol,
        uint8 decimals,
        uint256 totalSupply
    ) ERC20Detailed(name, symbol, decimals) Ownable() public {
        ERC20._mint(msg.sender, totalSupply);
    }

    /**
     * @dev Withdraw the ERC20 Token in the BWToken contract.
     * @param erc20 ERC20 Token address.
     * @param to To receive tokens.
     * @param amount Tokens amount.
     */
    function withdrawERC20Token(address erc20, address to, uint256 amount) external {
        require(to != address(0x0));
        require(ITransferable(erc20).transfer(to, amount));
    }
}