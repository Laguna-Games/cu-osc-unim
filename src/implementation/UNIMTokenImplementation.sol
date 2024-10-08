// SPDX-License-Identifier: MIT
pragma solidity ^0.8.19;

import {CutERC20Diamond} from "../../lib/cu-osc-common-tokens/src/implementation/CutERC20Diamond.sol";

/// @title Dummy "implementation" contract for LG Diamond interface for ERC-1967 compatibility
/// @dev adapted from https://github.com/zdenham/diamond-etherscan?tab=readme-ov-file
/// @dev This interface is used internally to call endpoints on a deployed diamond cluster.
contract UNIMTokenImplementation is CutERC20Diamond {
    function initLZOFTV2(uint8 _sharedDecimals, address _lzEndpoint) external {}

    function setMinDstGas(
        uint16 _dstChainId,
        uint16 _packetType,
        uint _minGas
    ) external {}

    function getTrustedRemoteAddress(
        uint16 _remoteChainId
    ) external view returns (bytes memory) {}

    function lzReceive(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        uint64 _nonce,
        bytes calldata _payload
    ) public {}

    function setTrustedRemoteAddress(
        uint16 _remoteChainId,
        bytes calldata _remoteAddress
    ) external {}

    function retryMessage(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        uint64 _nonce,
        bytes calldata _payload
    ) public payable {}

    function nonblockingLzReceive(
        uint16 _srcChainId,
        bytes calldata _srcAddress,
        uint64 _nonce,
        bytes calldata _payload
    ) public {}

    function burnFrom(address account, uint256 amount) external {}
}
