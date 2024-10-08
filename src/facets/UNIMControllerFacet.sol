// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.19;

import {LibContractOwner} from "../../lib/cu-osc-diamond-template/src/libraries/LibContractOwner.sol";
import {LibERC20} from "../../lib/cu-osc-common-tokens/src/libraries/LibERC20.sol";

contract UNIMControllerFacet {
    function setERC20Controller(address newController) external {
        LibContractOwner.enforceIsContractOwner();

        LibERC20.setController(newController);
    }
}
