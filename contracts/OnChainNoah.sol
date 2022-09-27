// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract OnChainNoah is Ownable, ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("NoahToken", "NOAH"){}

    function mint(uint256 _amount) external {
        uint256 currentId = _tokenIds.current();
        _safeMint(msg.sender, _amount);
        _setTokenURI(currentId, "data:application/json;base64,ewogICAgIm5hbWUiOiAiT25DaGFpbk5vYWgiLAogICAgImRlc2NyaXB0aW9uIjogIkEgZnJlc2ggbjBhaCB0b2tlbiwgbWludGVkIG9uIEdvZXJsaS4gQ3JlYXRlZCBTZXB0LiAyMDIyIiwKICAgICJpbWFnZSI6ICJkYXRhOmltYWdlL3N2Zyt4bWw7UEhOMlp5QjRiV3h1Y3owaWFIUjBjRG92TDNkM2R5NTNNeTV2Y21jdk1qQXdNQzl6ZG1jaUlIQnlaWE5sY25abFFYTndaV04wVW1GMGFXODlJbmhOYVc1WlRXbHVJRzFsWlhRaUlIWnBaWGRDYjNnOUlqQWdNQ0F6TlRBZ016VXdJajRLSUNBZ0lEeHpkSGxzWlQ0dVltRnpaU0I3SUdacGJHdzZJSGRvYVhSbE95Qm1iMjUwTFdaaGJXbHNlVG9nYzJWeWFXWTdJR1p2Ym5RdGMybDZaVG9nTVRSd2VEc2dmVHd2YzNSNWJHVStDaUFnSUNBOGNtVmpkQ0IzYVdSMGFEMGlNVEF3SlNJZ2FHVnBaMmgwUFNJeE1EQWxJaUJtYVd4c1BTSmliR0ZqYXlJZ0x6NEtJQ0FnSUR4MFpYaDBJSGc5SWpVd0pTSWdlVDBpTlRBbElpQmpiR0Z6Y3owaVltRnpaU0lnWkc5dGFXNWhiblF0WW1GelpXeHBibVU5SW0xcFpHUnNaU0lnZEdWNGRDMWhibU5vYjNJOUltMXBaR1JzWlNJK1ZHaHBjeUJwY3lCaElHNHdZV2dnZEc5clpXNHNJR0Z1SUU1R1ZDQjNhWFJvSUcxbGRHRmtZWFJoSUhOMGIzSmxaQ0J2YmkxamFHRnBiaTRnUEM5MFpYaDBQZ284TDNOMlp6ND0iCn0=");
    }
}
