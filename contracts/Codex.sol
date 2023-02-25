// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

import {ERC721Upgradeable} from "@openzeppelin/contracts-upgradeable/token/ERC721/ERC721Upgradeable.sol";
import {UUPSUpgradeable} from "@openzeppelin/contracts-upgradeable/proxy/utils/UUPSUpgradeable.sol";
import {IERC2981Upgradeable, IERC165Upgradeable} from "@openzeppelin/contracts-upgradeable/interfaces/IERC2981Upgradeable.sol";
import {AccessControlUpgradeable} from "@openzeppelin/contracts-upgradeable/access/AccessControlUpgradeable.sol";
import {ReentrancyGuardUpgradeable} from "@openzeppelin/contracts-upgradeable/security/ReentrancyGuardUpgradeable.sol";

import {ICodex} from "./interfaces/ICodex.sol";


contract Codex is ICodex, ERC721Upgradeable, UUPSUpgradeable, ReentrancyGuardUpgradeable, AccessControlUpgradeable {

	modifier onlyAdmin() { 
		if(!hasRole(DEFAULT_ADMIN_ROLE, _msgSender())) {
			revert AccessOnlyAdmin();
		}
		_; 
	}
	

	function initialize(
		string memory _codexName,
		string memory _codexSymbol,
		string memory _codexDescription,
		address _initialOwner,
		address _renderer
	) public initializer {
		__ERC721_init(_codexName, _codexSymbol);
		__AccessControl_init();
		__ReentrancyGuard_init();

		_grantRole(DEFAULT_ADMIN_ROLE, _initialOwner);
		//_setOwner(_initialOwner);

		//mint tokenId 1 to the artist/creator. The live on-chain "app" of codex
	}

	function tokenURI(uint256 tokenId) public view override returns (string memory) {
		return "";
	}


	function _authorizeUpgrade(address _newImplementation) internal override onlyAdmin {}

	function supportsInterface(bytes4 interfaceId) public view override(ERC721Upgradeable, AccessControlUpgradeable) returns (bool) {
		return 
			super.supportsInterface(interfaceId) ||
			type(ICodex).interfaceId == interfaceId;
	}
}