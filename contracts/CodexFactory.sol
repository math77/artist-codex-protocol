// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

// Uncomment this line to use console.log
// import "hardhat/console.sol";

import {OwnableUpgradeable} from "@openzeppelin/contracts-upgradeable/access/OwnableUpgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";

import {CodexProxy} from "./CodexProxy.sol";

import {ICodexFactory} from "./interfaces/ICodexFactory.sol";

import {Codex} from "./Codex.sol";
import {CodexFactoryStorage} from "./CodexFactoryStorage.sol";


/// @title Codex Factory 
/// @author matheus
contract CodexFactory is ICodexFactory, OwnableUpgradeable, UUPSUpgradeable, CodexFactoryStorage {

	address public immutable implementation;

	constructor(address _implementation) initializer {
		implementation = _implementation;
	}

	function initialize() external initializer {
		__Ownable_init();
		__UUPSUpgradeable_init();
	}

	function _authorizeUpgrade(address _newImplementation) internal override onlyOwner {}

	function createNewCodex(
		string memory codexName,
		string memory codexSymbol,
		string memory codexDescription,
		address initialOwner,
		address renderer
	) public payable returns (address newCodexAddress) {
		CodexProxy newCodex = new CodexProxy(implementation, "");

		newCodexAddress = address(newCodex);
		Codex(newCodexAddress).initialize({
			_codexName: codexName,
			_codexSymbol: codexSymbol,
			_codexDescription: codexDescription,
			_initialOwner: initialOwner,
			_renderer: renderer
		});

		emit CodexCreated({
			codex: newCodexAddress,
			owner: initialOwner
		});

	} 

	function addNewMetadataRenderer(address _renderer) external {
		require(_renderer != address(0), "CANNOT BE ZERO");

		metadataRenderers.push(_renderer);

		emit NewMetadataRendererAdded({renderer: _renderer});
	}

}