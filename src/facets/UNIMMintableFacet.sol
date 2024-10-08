// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {LibERC20} from "../../lib/cu-osc-common-tokens/src/libraries/LibERC20.sol";

contract UNIMMintableFacet {
    function mint(address account, uint256 amount) external {
        LibERC20.enforceIsControllerOrOwner();
        LibERC20.mint(account, amount);
    }
}
