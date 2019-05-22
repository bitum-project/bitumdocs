# <img class="bitum-icon" src="/img/bitum-icons/Governance.svg" /> Introduction to Bitum Governance

---

Bitum’s governance is based on the principle of ticket-holder voting. To participate in governance, users must time-lock BITUM to purchase [tickets](../proof-of-stake/overview.md). Tickets can then be used to vote on validating blocks, consensus rule changes, or proposals in Bitum’s web-based proposal system, [Politeia](https://proposals.bitum.io/). 

Validation of blocks and voting on consensus rule changes occurs on-chain. Voting on higher-level issues, such as how to spend [Treasury funds](http://explorer.bitum.io/address/B1xAWYg2eAyXhbetkLTMWmWN3Ub8AZfkeTq), or significant policy decisions (e.g. amend the [Bitum constitution](bitum-constitution.md)) occurs off-chain in Politeia, a web platform where the community at large can submit, discuss and vote on proposals.

To compensate ticket holders for validating blocks and securing the network, 30% of the block reward (PoS reward) is sent to ticket holders for voting on blocks; the remaining block reward is split between PoW miners (60%) and the Treasury (10%) to fund ongoing development. The ticket price (the amount of BITUM that must be time-locked) is adjusted dynamically every 144 blocks (~12 hrs), in an attempt to keep PoS returns stable over time. 


---

## On-chain voting

On-chain voting serves two main purposes: validating blocks created by Proof-of-Work (PoW) miners and voting on proposed consensus rule changes. 

### Block voting

In each block, five tickets are selected pseudo-randomly and called to vote on-chain. It takes an average of 28 days for a ticket to be called to vote, though a ticket can be called anytime between 256 blocks after purchase (~20 hrs) to up to 40,960 blocks after purchase (~4 months). Tickets then vote to approve or reject the previous block of transactions created by a PoW miner. At least three out of five tickets called to vote must respond for the block to be considered valid. If a majority of voting tickets vote to approve the block, the block is accepted. If less than 50% of voting tickets approve the block (or there is a tie), all transactions from the previous block are removed and returned to the mempool; the PoW miner's reward is revoked. This power provides a check against malicious PoW miner behavior (e.g. mining empty blocks), as well as forming the basis of Bitum’s. After a ticket is called to vote, the BITUM locked in that ticket is unlocked and returned to the purchaser’s wallet, along with the PoS reward if the ticket successfully voted. 

If a vote to change the consensus rules is occurring, tickets can also [vote](consensus-rule-voting/overview.md) to approve or reject the proposed change. A proposed change must be approved by 75% of non-abstaining tickets to take effect.

---

## Off-chain voting

Decisions concerning the direction of the project, such as how to spend Treasury funds, or amending the Bitum Constitution or other policies, are made via proposals on [Politeia](https://proposals.bitum.io/).

Anyone may submit a proposal, and all data on Politeia (proposals, comments, upvotes/downvotes) is periodically anchored into the Bitum blockchain, using [bitumtime](https://github.com/bitum-project/bitumtime). This enables users to [cryptographically prove](politeia/politeia-censorship.md) if censorship has occurred. In this way, Politeia is built around the idea of _transparent censorship_. Users cannot be silently censored. 
