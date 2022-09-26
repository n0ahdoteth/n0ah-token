// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "erc721a/contracts/ERC721A.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721Enumerable.sol";
import "@openzeppelin/contracts/utils/Counters.sol";
import "hardhat/console.sol";

contract OnChainNoah is Ownable, ERC721URIStorage {
    using Counters for Counters.Counter;
    Counters.Counter private _tokenIds;
    
    constructor() ERC721("NoahToken", "NOAH"){}

    function mint() external {
        uint256 currentId = _tokenIds.current();
        _safeMint(msg.sender, currentId);
        _setTokenURI(currentId, "data:application/json;base64,ewogICAgIm5hbWUiOiAiT25DaGFpbk5vYWgiLAogICAgImRlc2NyaXB0aW9uIjogIkEgZnJlc2ggbjBhaCB0b2tlbiwgbWludGVkIG9uIEdvZXJsaS4gQ3JlYXRlZCBTZXB0LiAyMDIyIiwKICAgICJpbWFnZSI6ICJkYXRhOmltYWdlL3N2Zyt4bWw7YmFzZTY0LFBITjJaeUI0Yld4dWN6MGlhSFIwY0RvdkwzZDNkeTUzTXk1dmNtY3ZNakF3TUM5emRtY2lJSEJ5WlhObGNuWmxRWE53WldOMFVtRjBhVzg5SW5oTmFXNVpUV2x1SUcxbFpYUWlJSFpwWlhkQ2IzZzlJakFnTUNBek5UQWdNelV3SWo0S0lDQWdJRHh6ZEhsc1pUNHVZbUZ6WlNCN0lHWnBiR3c2SUhkb2FYUmxPeUJtYjI1MExXWmhiV2xzZVRvZ2MyVnlhV1k3SUdadmJuUXRjMmw2WlRvZ01UUndlRHNnZlR3dmMzUjViR1UrQ2lBZ0lDQThjbVZqZENCM2FXUjBhRDBpTVRBd0pTSWdhR1ZwWjJoMFBTSXhNREFsSWlCbWFXeHNQU0ppYkdGamF5SWdMejRLSUNBZ0lEeDBaWGgwSUhnOUlqVXdKU0lnZVQwaU5UQWxJaUJqYkdGemN6MGlZbUZ6WlNJZ1pHOXRhVzVoYm5RdFltRnpaV3hwYm1VOUltMXBaR1JzWlNJZ2RHVjRkQzFoYm1Ob2IzSTlJbTFwWkdSc1pTSStWR2hwY3lCcGN5QmhJRzR3WVdnZ2RHOXJaVzRzSUdGdUlFNUdWQ0IzYVhSb0lHMWxkR0ZrWVhSaElITjBiM0psWkNCdmJpMWphR0ZwYmk0Z1BDOTBaWGgwUGdvOEwzTjJaejQ9Igp9");
        _tokenIds.increment();
    }
}
