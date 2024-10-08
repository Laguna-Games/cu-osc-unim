// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {LibTestnetDebugInterface} from "../../lib/cu-osc-common/src/libraries/LibTestnetDebugInterface.sol";
import {LibERC20} from "../../lib/cu-osc-common-tokens/src/libraries/LibERC20.sol";

contract UnimFaucetFacet {
    function faucetMintUnim(address to, uint256 amount) external {
        LibTestnetDebugInterface.enforceDebugger();
        LibERC20.mint(to, amount);
    }
}
