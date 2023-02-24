// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;

/// @author matheus
interface ICodex {

	/// @notice Only admin can access the function
	error AccessOnlyAdmin();

	/// @notice Emit when new codex section is created
	event CodexSectionCreated(address section, address codex);
	
}