// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.18;


interface ICodexSection {

	enum ConnectionType { 
		REFERENCE,
		DERIVATIVE,
		INSPIRATION
	}
	

	struct ContentConnection {
		uint256 tokenIdA;
		uint256 tokenIdB;
		uint256 createdAt;
		ConnectionType connType;
		string commentary;
	}
	
}