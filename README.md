# Artist Codex Protocol

A protocol that allows artists/creators to create their own onchain codexes.

![codex protocol diagram draft](/protocol-diagram-draft.png "Protocol diagram draft")


## Overview

A codex acts as a personal public diary allowing thoughts, fun facts, cheat codes, ideas, etc. to be recorded and connected as NFTs onchain. Artists/creators can start as many self-sovereign codexes as they like. After starting a codex (ERC721 contract), its owners can create sections "inside" the codex (ERC721 contracts) to organize the content as they wish.

Each "entry" or content (text or media) in a codex is an NFT to allow it later, if the creator wishes, to be separated and sold, linked, burned, etc.

Each codex and each section in a codex has an NFT that acts as an onchain app that will show real-time statistics about it.

These onchain app also represent ownership of the associated codex or section contracts, thus allowing the codex owner to sell a section or even the entire codex in a direct sale or auction.

*Skeuomorphic POV1: Think of it as a personal book that you cut out parts of and do whatever you want.*

*Skeuomorphic POV2: Think of the "onchain app" as a living book cover.*



## Linking content

Since each content within a section is an NFT they can be linked to each other creating relationships in a "context network".

### Owner link

Owners of the codex can link the contents that have links between them.


![protocol link diagram draft](/owner-link-content-diagram.png "Owner link diagram")


### Community link

Owners of the codexes can at any time enable/disable permission for the community at large to add content to their codexes by increasing the context of information in their diaries.

When a community member makes his first contribution, he receives an onchain soulbond NFT that acts as an "onchain app" that will show real-time statistics of all his contributions to that codex. 


![protocol link diagram draft](/community-link-content-diagram.png "Community link diagram")


## Enriching the metadata

With this information recorded in the protocol, artists could create sections in their codexes specific to particular artworks and link this to the metadata.

```
{
 "title": "...",
 "image": "...",
 "description": "...",
 "codex": "probably-the-section-address",
}

```

In this way marketplaces and other platforms, as well as collectors would have a larger body of information and insight into an artist's mind and processes for that specific work.


## Notes

This is still a work in progress and very early indeed. If you have ideas or have found flaws in my thought process you can DM me on twitter.

My twitter is [@uanpinkk](https://twitter.com/uanpinkk)