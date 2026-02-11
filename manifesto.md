<!--
  This is the SOURCE FILE for the Farcaster Manifesto.
  Edit this file, not index.html. Run `make build` to regenerate index.html.
-->

::: divider
:::

:::::::: {#tldr .section}
::::: fi
::: ch
Part 0
:::

::: section-heading

## **TLDR.**

:::
:::::

:::: fi
::: lead
Farcaster is an open social protocol --- not a company, not an app --- where your identity, posts, and connections are yours forever. Its original founders left and sold control to Neynar, the dominant infrastructure provider, creating a dangerous concentration of power over a system that was meant to belong to everyone.
:::

This manifesto is a call to action: we propose **\$FARCASTER**, a community token that gives ownership, governance, and economic stake to the people who actually built this network --- rewarding years of contribution, funding future development through a DAO, and ensuring that no single entity can ever again decide the fate of something that belongs to all of us.

What if the protocol was ours? It is time to decentralize farcaster.
::::
::::::::

::: divider
:::

::::::::: {#farcaster-intro .section}
::::: fi
::: ch
Part I
:::

::: section-heading

## For anyone arriving for the first time: **what is this place?**

:::
:::::

:::: fi
::: lead
Farcaster is a protocol for social communication. Not a company. Not an app. A **protocol** --- an open set of rules that anyone can build on top of and that no individual entity should own.
:::
::::

::: fi
Think of email. No company owns email. Gmail is a client. Outlook is a client. The protocol underneath --- SMTP --- belongs to everyone. If Gmail disappears tomorrow, your ability to send email doesn\'t disappear with it.

Farcaster is that, but for social media. ~~Farcaster~~ **Warpcast** is the main client --- the app most people use. But the protocol doesn\'t need it to survive. The social graph, the messages, the identities --- they live on an open, decentralized network that no single entity controls.

When you create a Farcaster account, you are minting a permanent identity unit on a blockchain. Your posts are signed by your cryptographic keys and broadcast to a network of independent nodes. Your followers, your reputation, your history --- they belong to **you**.

That is the promise. And to understand why it matters so much, you need to know what is happening.
:::
:::::::::

::: divider
:::

::::::: {#truth .section}
::::: fi
::: ch
Part II
:::

::: section-heading

## The last events, and **current state of the network.**

:::
:::::

::: fi
For over four years, thousands of people poured their energy, creativity, time, and belief into this protocol. They wrote casts. Shared memes. Deployed clankers. Developers built hundreds of Frames, Mini Apps, bots, and novel systems. Artists created and shared their craft. Writers wrote. Novel products spawned. Communities formed. People made _friends_. Conferences were held and they were magical.

More importantly: people built **reputation.**. Meaningful and unruggable connections. Not only followers. Not clout. The slow, honest accumulation of trust that comes from showing up day after day, connecting, creating things that matter, helping strangers, pushing boundaries.

And then the previous leadership, which created this whole thing (TYDR) walked away.

But they didn\'t just leave. They **sold the protocol to Neynar** --- the company that already controlled the dominant developer infrastructure. The API layer. The SDKs. The webhooks. The managed signers. The tooling that every builder on Farcaster depends on to ship anything.

Let that sink in: **the company that charges developers to build on the protocol is now the maintainer of the protocol itself.** The entity that sets API pricing also sets protocol direction. They literally have the keys of it. The landlord became the city planner.

This is not decentralization --- it is a consolidation of power dressed in the language of stewardship.

And the founders who orchestrated this? They didn\'t disappear into obscurity. They are still here --- posting, casting, engaging. **They are users now, just like everyone else.** No special governance rights. No protocol authority. Just FIDs in a sea of FIDs. The people who built the lighthouse and then handed the keys to a toll booth operator are now walking the same docks as everyone else, pretending the hand-off was a gift.

This creates incentives that should alarm anyone paying attention. When the infrastructure provider _is_ the protocol steward, what happens when their business interests diverge from the community\'s needs? When raising API prices funds protocol development, who does the protocol really serve? The answer is obvious. And it is not you.

There was no network token. No concrete medium of belonging. No way for the people who built this world to own a piece of it. The community held nothing but trust. And then trust was broken --- not once, but twice. First by the departure. Then by the terms of the hand-off.

Leaving us with empty hands and a broken spirit.
:::
:::::::

::: divider
:::

::::::::::: {#stayed .section}
::::: fi
::: ch
Part III
:::

::: section-heading

## And then we realized our friends **were still here.**

:::
:::::

:::: fi
::: lead
_What the fuck do we do with this now?_ --- the people who believed in a different future asked each other. They walked the empty streets, puzzled. They casted to the void. Hoping for remembrances of what had happened here before.
:::
::::

::: fi
And then they realized something:

**The protocol was still there.** The contracts on Optimism --- still there. The Snapchain nodes running around the world --- still there. The social graph of every connection --- still there. The FIDs, the keys, the signed messages, the Mini Apps, the channels --- all of it, running, open, belonging to no one and everyone at once.

A protocol does not need founders. That is the entire point. The founders were stewards. The stewards left. They already did their job. But the ocean didn\'t drain when the lighthouse keeper walked away.
:::

::: fi
This document is part of that movement. This is a new way of talking about Farcaster. Not the marketing page. The truth: this protocol could die because it has no shared ownership. And it will survive because the people who care are too stubborn to leave.

Farcaster today doesn\'t look different from X or threads or other social media platforms to an outsider. The ethos doesn\'t shine through yet. **That is what this document is the beginning of changing.**
:::

::: {.voice .fi}
And then they realized that their friends were still here.

And a movement started.

And it was **fucking glorious.**
:::
:::::::::::

::: divider
:::

:::::::::::::::: {#fid .section}
::::: fi
::: ch
Part IV
:::

::: section-heading

## The most powerful number **you\'ll ever own on the internet.**

:::
:::::

:::: fi
::: lead
At the heart of everything is a **FID** --- a Farcaster ID. A number registered on-chain, linked to your Ethereum address, owned by you. Not rented. _Owned._
:::
::::

::: fi
Every word you\'ve written on Farcaster --- every post, every like, every follow --- is a cryptographically signed message attached to your FID. Not in a corporate database. On an open network. Readable by anyone. Deletable by no one but you.

Your FID works in **every** app built on Farcaster. If Warpcast disappears tomorrow, your identity doesn\'t disappear with it. Another client picks up where it left off. Your social graph, your history, your reputation --- portable, permanent, yours.

**This is the most powerful identity primitive of the new internet.** Not because of technical tricks. Because it means you can never again be trapped inside someone else\'s walls.
:::

:::::::: {.cards .fi}
::: card

#### Your Name

A username like \@alice that maps to your FID. A Farcaster name you can claim, or bring your own ENS name (.eth) for permanent, censorship-resistant naming.
:::

::: card

#### Your Messages

Every cast, reaction, follow, and profile update is a signed message on the network. Five types: Casts, Reactions, Links, Profile Data, Wallet Verifications.
:::

::: card

#### Your Keys

Apps get revocable permissions, not your identity. You grant keys. You revoke keys. No app ever touches your master identity.
:::

::: card

#### Your Graph

Follows are signed messages on the protocol, not hidden database rows. Your social graph is public, portable, verifiable --- it travels with you.
:::

::: card

#### Your Proof

Connect wallets, verify across chains, link ENS. On-chain proofs of who you are, anchored to the most secure networks humanity has built.
:::
::::::::

::: {.tn .fi}
**Technical:** FIDs are registered via the IdRegistry contract on Optimism (`0x00000000Fc6c5F01Fc30151999387Bb99A9f489b`).
:::
::::::::::::::::

::: divider
:::

::::::::::::::::::::::::: {#ocean .section}
::::: fi
::: ch
Part V
:::

::: section-heading

## The shape of **the ocean.**

:::
:::::

:::: fi
::: lead
Farcaster isn\'t a server. It\'s a living network --- contracts, nodes, and open data flowing like currents.
:::
::::

::: fi
Two layers. **Optimism** --- the blockchain where permanent facts live: who you are, your keys, your storage. And **Snapchain** --- a purpose-built network for daily communication. Over 9,000 messages per second. Dozens of independent nodes. Consensus that tolerates dishonesty and survives failure.

Above them, **Neynar** provides developer infrastructure --- APIs, SDKs, webhooks. And above that, **Warpcast** and other clients give people a way to interact without thinking about any of it.

Here is the uncomfortable truth about this architecture: **Neynar now occupies THREE roles simultaneously.** They are the dominant infrastructure provider that developers pay to access the protocol, they are in charge of maintaining the main client, _and_ they are the stewards of the protocol itself.

The entity that profits from the current layer sits above the bedrock and below the surface --- controlling the current that connects everything. This is a structural conflict of interest that the community must understand and address.
:::

:::::::::::::::::: {.layers .fi}
::::: layer
::: layer-tag
Surface
:::

::: layer-body

#### Clients

Warpcast, Supercast, others. Different lenses into the same open world.
:::
:::::

::::: layer
::: layer-tag
Shallow
:::

::: layer-body

#### Mini Apps

Interactive apps inside any client. Games, tools, commerce --- with wallet access and notifications.
:::
:::::

::::: layer
::: layer-tag
Current
:::

::: layer-body

#### Neynar APIs

REST, SDKs, webhooks, managed signers. The bridge between raw protocol and working applications. Now also the protocol\'s steward --- a dual role worth scrutinizing.
:::
:::::

::::: layer
::: layer-tag
Deep
:::

::: layer-body

#### Snapchain

Decentralized message network. Byzantine-fault-tolerant. 9,000+ TPS. The living memory.
:::
:::::

::::: layer
::: layer-tag
Bedrock
:::

::: layer-body

#### On-Chain Contracts

Identity, keys, storage --- etched into Optimism. The ground truth that survives everything.
:::
:::::
::::::::::::::::::
:::::::::::::::::::::::::

::: divider
:::

::::::::::::::::::::::: {#language .section}
::::: fi
::: ch
Part VI
:::

::: section-heading

## The words **you\'ll need.**

:::
:::::

::::::::::::::::::: {.glossary .fi}
:::: g
::: g-term
Cast
:::

A post on Farcaster. Signed, stored on the open network, yours.
::::

:::: g
::: g-term
FID
:::

Farcaster ID. Your permanent, on-chain identity number.
::::

:::: g
::: g-term
Warpcast
:::

The main Farcaster client. One of many possible interfaces.
::::

:::: g
::: g-term
Channel
:::

Topic-based gathering place. /art, /dev, /music. Self-organizing.
::::

:::: g
::: g-term
Snapchain
:::

The decentralized network carrying all messages.
::::

:::: g
::: g-term
Mini App
:::

Interactive app inside any client. Games, mints, commerce.
::::

:::: g
::: g-term
Signer
:::

Revocable key letting an app act on your behalf.
::::

:::: g
::: g-term
Neynar
:::

Primary developer platform and current protocol steward. APIs, SDKs, infrastructure. Also sets protocol direction --- a conflict worth watching.
::::
:::::::::::::::::::
:::::::::::::::::::::::

::: divider
:::

::::::::::::::::: {#build .section .section-wide}
::::: fi
::: ch
Part VII
:::

::: section-heading

## Choose **your voyage and build.**

:::
:::::

:::: fi
::: lead
You don\'t need to be a blockchain engineer. You need curiosity and something you want to create.
:::
::::

::::::::::: {.pathways .fi}
:::: pathway
::: pathway-num
01
:::

#### Start with the simplest

Build a Mini App.

[Mini Apps Docs →](https://miniapps.farcaster.xyz){.plink target="\_blank" rel="noopener"}
::::

:::: pathway
::: pathway-num
02
:::

#### Create something social

Neynar APIs: feeds, search, bots, AI agents. Three lines to fetch any feed on the network.

[Neynar Docs →](https://docs.neynar.com){.plink target="\_blank" rel="noopener"}
::::

:::: pathway
::: pathway-num
03
:::

#### Go deeper

Talk to Snapchain directly. Run a node. Replicate to Postgres. Query everything.

[Snapchain Docs →](https://snapchain.farcaster.xyz){.plink target="\_blank" rel="noopener"}
::::

:::: pathway
::: pathway-num
04
:::

#### Touch the bedrock

Smart contracts. Identity mechanics. Contribute through FIPs.

[Protocol Docs →](https://docs.farcaster.xyz){.plink target="\_blank" rel="noopener"}
::::
:::::::::::
:::::::::::::::::

::: divider
:::

::::::::::::::::::::::::::::::::::::::::::::::::::::: {#token .section}
::::: fi
::: ch
Part VIII
:::

::: section-heading

## The case for **\$FARCASTER.**

:::
:::::

:::: fi
::: lead
A protocol without a token is a nation without a currency. People can live there. People can build there. But they can never truly **belong** there.
:::
::::

::: fi

### Why the token is necessary

The recent events made one thing devastatingly clear: **reputation without stake is a sandcastle at high tide.** Thousands of people invested years of creative energy into Farcaster. They built its culture, its tools, its soul. And when the leadership departed, those people had nothing. No ownership. No governance rights. No economic claim on the world they built. Just the memory of what it felt like to believe.

This is not a design oversight. It is a structural failure. Every successful open network in history has solved this problem: Bitcoin gave miners BTC. Ethereum gave early participants ETH. Even the internet itself grew because the companies building on it could issue equity. The incentive alignment between builders and the network is not optional --- **it is the engine of everything**.

Without a token, Farcaster faces three existential problems:

**1. The builder drain.** The most talented developers, artists, and community builders will eventually go where their effort is rewarded with ownership. Hope is a beautiful fuel, but it burns fast. You cannot ask people with families to work for hope indefinitely.

**2. The governance vacuum.** Who decides the future of the protocol? Right now the answer is unclear. A token creates a concrete mechanism: the people who hold it govern it. The more skin you have in the game, the more your voice matters. Not perfectly fair --- but infinitely better than a small team making decisions behind closed doors and then vanishing.

**3. The belonging gap.** The FID is the most powerful identity primitive on the internet. But identity without economic participation is citizenship without a vote. A token turns passive users into active stakeholders. It transforms \"I use this\" into \"I _own_ this.\"

### What \$FARCASTER should be

Not a memecoin. Not a speculative asset. A **coordination token** --- the economic layer that aligns everyone who cares about this network toward its long-term success. Something that rewards the people who already built this world and empowers the people who will build its future.

The token should serve five functions:

**Governance.** \$FARCASTER holders vote on protocol upgrades, treasury allocation, and FIPs (Farcaster Improvement Proposals). One token, one vote. Delegation supported for those who want to empower representatives.

**Staking.** Snapchain node operators stake \$FARCASTER to participate in consensus. This replaces trust with economic commitment --- operators who act honestly earn rewards, operators who cheat lose their stake.

**Storage.** Storage rent --- currently paid in ETH --- transitions to \$FARCASTER. This creates direct utility demand: every active user needs the token to maintain their presence on the network.

**Rewards.** A portion of annual emissions flows to active builders, node operators, and contributors --- measured on-chain through verifiable activity, not committees or subjective grants.

**Attention via speculation.** Number go up attracts eyes, users and capital to invest on the token. If the core community behind it is made out of gold, it becomes an excellent asset on which to invest.
:::

::: fi

### Proposed supply and distribution

Total supply: **10,000,000,000 \$FARCASTER** (10 billion). Fixed supply. Fair launched via clanker. No inflation beyond the initial allocation. All vesting is on-chain and verifiable.
:::

::::::::::: fi
::::::::: token-bar
::: tb-retro
35%
:::

::: tb-build
20%
:::

::: tb-dao
20%
:::

::: tb-liq
10%
:::

::: tb-node
5%
:::

::: tb-fut
10%
:::
:::::::::

::: token-legend
[Community Retroactive]{.tl-retro} [Builder Fund]{.tl-build} [Protocol DAO]{.tl-dao} [Liquidity]{.tl-liq} [Node Operators]{.tl-node} [Future Contributors]{.tl-fut}
:::
:::::::::::

::::::::::::::::::::: {.token-cards .fi}
::::: token-card
::: token-card-header
[Community Retroactive Airdrop]{.token-card-name} [35%]{.token-card-pct}
:::

::: token-card-body
**3.5 billion tokens** distributed to every FID holder based on verifiable on-chain activity. The formula weights: **Time** --- how long you\'ve had your FID (earliest minters get the strongest multiplier). **Activity** --- casts published, reactions given, follows made --- the signed messages that prove you were here, building culture. **Storage** --- units rented, demonstrating sustained commitment to the network. **Connections** --- graph depth, not follower count. Did real humans interact with you? The social graph is on-chain --- sybils are detectable. No committee decides who \"deserves\" this. The protocol data decides. Every claim is verifiable. Every FID is eligible. The people who gave the most to this network receive the most back. This is the settlement of a debt.
:::
:::::

::::: token-card
::: token-card-header
[Builder Fund]{.token-card-name} [20%]{.token-card-pct}
:::

::: token-card-body
**2 billion tokens** for developers who built on Farcaster. Distributed in two waves: **Retroactive (10%)** --- developers whose Mini Apps, bots, Frames, clients, and tools were used by the community. Measured by: contract deployments referencing Farcaster primitives, Mini App installs and usage, apps registered in the KeyRegistry, Neynar API integrations with significant traffic. If you shipped something people used, you earn. **Prospective (10%)** --- a grants program governed by the DAO for future builders. 4-year linear vesting. Milestone-based unlocks. The community votes on allocation.
:::
:::::

::::: token-card
::: token-card-header
[Protocol DAO Treasury]{.token-card-name} [20%]{.token-card-pct}
:::

::: token-card-body
**2 billion tokens** held by the DAO --- a smart contract governed by \$FARCASTER holders. Funds protocol development, security audits, ecosystem grants, partnerships, and emergencies. Spending requires on-chain votes with a 4-day timelock. No individual controls this. No one can walk away with it. The treasury belongs to the token holders, period.
:::
:::::

::::: token-card
::: token-card-header
[Liquidity & Ecosystem]{.token-card-name} [10%]{.token-card-pct}
:::

::: token-card-body
**1 billion tokens** for DEX liquidity pools, exchange listings, and market making. 30% available at launch, remainder vesting over 12 months. Ensures the token is immediately tradeable and accessible. Deployed on Base and Optimism first --- the chains where Farcaster already lives.
:::
:::::

::::: token-card
::: token-card-header
[Node Operators]{.token-card-name} [5%]{.token-card-pct}
:::

::: token-card-body
**500 million tokens** for Snapchain validators. Distributed as staking rewards over 4 years. Operators stake \$FARCASTER to run nodes; honest operation earns rewards, malicious behavior results in slashing. This replaces trust-based consensus with economic security. The more value the network carries, the more expensive it becomes to attack.
:::
:::::

::::: token-card
::: token-card-header
[Future Contributors]{.token-card-name} [10%]{.token-card-pct}
:::

::: token-card-body
**1 billion tokens** locked in a time-release contract, vesting linearly over 4 years. Reserved for future core contributors, protocol developers, and essential infrastructure maintainers. Allocation governed by DAO vote. This ensures the protocol can attract talent for years to come without depending on any single company.
:::
:::::
:::::::::::::::::::::

::: fi

### What is deliberately absent

**No founder allocation.** The founders left. They returned investor money. They made their exit. The token is for the people who stayed. This is not punitive --- it is structural. The token represents future ownership, and its purpose is to reward future builders and retroactive contributors, not past equity holders who already chose their exit.

**No VC allocation.** Venture investors were returned their capital. Their relationship with Farcaster is settled. The token is not a fundraise. It is a distribution of ownership to the community that a fundraise model failed to serve. If institutional capital wants to participate, they buy on the open market like everyone else.

**No pre-mine beyond the stated allocations.** Every token is accounted for. Every vesting schedule is on-chain. Every treasury spend requires a vote. This is the opposite of what happened before --- transparency as a structural commitment, not a marketing promise.

### The distribution criteria: reputation as proof of work

The retroactive airdrop is the most important allocation. It must be done right. The entire thesis is: **the people who built this network with their time and creativity deserve to own a piece of it.**

Every criterion must be on-chain verifiable. No subjective panels. No \"core team decides.\" The protocol\'s own data is the judge:
:::

::::::::::::: {.cards .fi}
:::: card

#### FID Age

When was your FID minted? The earliest believers --- the people who showed up before there was anything to show up for --- receive the highest multiplier. Logarithmic decay: FID #50 and FID #500 are both early; FID #500,000 is not.

::: meta
Source: IdRegistry contract on Optimism · Immutable · On-chain
:::
::::

:::: card

#### Message Volume

Total signed messages on Snapchain: casts, reactions, links, profile updates. Not raw count --- weighted by message type and uniqueness. Original casts count more than reactions. Replies to others count more than standalone posts. This rewards conversation, not spam.

::: meta
Source: Snapchain message history · Verifiable by any node operator
:::
::::

:::: card

#### Graph Depth

Not \"how many followers\" --- how deeply embedded in the network. Measured by bidirectional follows, reply threads, reaction diversity. A FID followed by 100 unique active users who also interact with their casts scores higher than a FID followed by 10,000 dormant accounts.

::: meta
Source: Link messages on Snapchain · Reaction patterns · Sybil-resistant by design
:::
::::

:::: card

#### Storage Commitment

How many storage units have you rented, and for how long? Storage rent is the only direct economic commitment users make to the protocol today. It proves sustained, concrete belief.

::: meta
Source: StorageRegistry contract on Optimism · On-chain payment history
:::
::::

:::: card

#### Builder Activity

For the Builder Fund specifically: app keys registered in KeyRegistry, Mini Apps deployed, contracts interacting with Farcaster primitives, verifiable API usage through Neynar. If you shipped something the network used, the network pays you back.

::: meta
Source: KeyRegistry · Snapchain app key registrations · Mini App manifest registry
:::
::::
:::::::::::::

::: fi

### The philosophical argument

Every great protocol moment in history has been a moment of distribution. Bitcoin\'s genesis block. Ethereum\'s crowdsale. Uniswap\'s airdrop to every wallet that ever used the protocol. These were not financial events --- they were **acts of recognition**. The network saying to its earliest participants: _you built this. This is yours._

Farcaster missed that moment. The leadership chose a different path --- venture funding, corporate structure, controlled development. That path ended when the leadership departed and returned the money. The venture model failed this network. It failed the builders, the creators, the dreamers who gave years of their lives to something they believed in.

\$FARCASTER is the correction. Not a bailout. Not a consolation prize. A structural redesign. The moment where this protocol stops being something people _use_ and becomes something people _own_.

Because ownership changes everything. When you own a piece of the network, you don\'t just build on it --- you build _for_ it. Every Mini App you ship, every cast you write, every friend you bring --- it isn\'t just activity. It\'s an investment in something that\'s yours. The incentives align. The energy compounds. The flywheel turns.

And the people who stayed through the worst of it --- who watched the founders leave, who picked up the pieces, who kept building when there was no rational reason to --- those people deserve to be first in line.
:::

::: {.voice .fi}
A network token is not about price. It is about **alignment**. It is the difference between renting a room in someone else\'s house and owning a piece of the foundation. It is what turns users into citizens. Builders into co-owners. Believers into shareholders of a shared future.
:::

::: fi

### The path forward

This proposal is a starting point, not a decree. The exact parameters --- total supply, allocation percentages, vesting schedules, distribution formulas --- should be debated, refined, and ultimately ratified by the community through a governance process. What matters is the principle:

**The people who built Farcaster deserve to own Farcaster.**

The technology is ready. The FID system provides sybil-resistant identity. Snapchain provides verifiable activity history. The smart contracts provide on-chain proof of commitment. Every criterion for a fair, transparent, verifiable distribution already exists in the protocol\'s own data. We don\'t need to build new infrastructure. We need the **will** to do what should have been done from the beginning.

What if farcaster was ours now?
:::
:::::::::::::::::::::::::::::::::::::::::::::::::::::

::: divider
:::

:::::::: {#epilogue .section}
::::: fi
::: ch
Epilogue
:::

::: section-heading

## This document is **a beginning.**

:::
:::::

::: fi
If you\'re reading this and you\'ve never heard of Farcaster --- welcome. You\'re arriving at the exact right moment. The foundation is solid. The contracts are on-chain. The network runs. The tools exist. And for the first time, the community could shape this into what it was always meant to be.

**Claim your FID.** It is your passport to a world being built right now, by people who refused to accept that the way things are is the way things have to be.
:::

::: {.voice .fi}
Come build with us.
:::
::::::::
