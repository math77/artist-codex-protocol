// SPDX-License-Identifier: UNLICENSED

pragma solidity ^0.8.18;


interface IMetadataRenderer {
  function tokenURI(uint256) external view returns (string memory);
}

