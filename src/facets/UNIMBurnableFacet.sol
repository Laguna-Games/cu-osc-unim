// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {LibERC20} from "../../lib/cu-osc-common-tokens/src/libraries/LibERC20.sol";

contract UNIMBurnableFacet {
    function burnFrom(address account, uint256 amount) external {
        uint256 currentAllowance = LibERC20.allowance(account, msg.sender);
        if (msg.sender == LibERC20.erc20Storage().controller) {
            currentAllowance = type(uint256).max;
        }

        require(
            currentAllowance >= amount,
            "UNIMBurnableFacet: burn amount exceeds allowance"
        );
        unchecked {
            LibERC20._approve(account, msg.sender, currentAllowance - amount);
        }
        LibERC20.burn(account, amount);
    }
}
