// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;


interface ICodexSection {

	enum ConnectionType { 
		REFERENCE,
		DERIVATIVE,
		INSPIRATION,
		OTHER
	}
	

	struct ContentConnection {
		uint256 tokenIdA;
		uint256 tokenIdB;
		uint256 createdAt;
		address createdBy;
		ConnectionType connType;
		string comment;
	}
	
}