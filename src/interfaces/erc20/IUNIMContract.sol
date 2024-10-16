// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

interface IUNIMContract {
    function burnFrom(address account, uint256 amount) external;

    function mint(address account, uint256 amount) external;
}