// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;


interface ICodexFactory {
  event CodexCreated(address codex, address owner);
  event NewMetadataRendererAdded(address renderer); 
}