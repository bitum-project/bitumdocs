# <img class="bitum-icon" src="/img/bitum-icons/Config1.svg" /> Configuration

---

#### 1. What are the default ports `bitumd` and `bitumwallet` listen on?

##### `bitumd`

|             |Mainnet|Testnet|Simnet
---           |---   |---    |---
*Peer to Peer*| 9108 | 19108 | 18555
*RPC Server*  | 9109 | 19109 | 19556

##### `bitumwallet`

|                |Mainnet|Testnet|Simnet
---              |---   |---    |---
*JSON-RPC Server*| 9110 | 19110 | 19557
*gRPC Server*    | 9111 | 19111 | 19558

---

#### 2. What do you mean by configuration files for `bitumd`, `bitumwallet`, and `bitumctl`? 

Each application (`bitumd`, `bitumwallet`, `bitumctl`) can have its own configuration files[^9055]. Use `-h` and look at the path in parentheses of the configuration file option (`-C`, `--configfile`) to see the default path. Create a text file at the path and named according to that path you just looked up.

Then you can use the `bitumd` [sample config file](https://github.com/bitum-project/bitumd/blob/029fc17e9cad1537941a590042288df87e71450d/sampleconfig/sampleconfig.go#L10-L351) and `bitumwallet` [sample config file](https://github.com/bitum-project/bitumwallet/blob/master/sample-bitumwallet.conf) to set whatever options you want. You can do the same thing for `bitumctl` too. The format is the same. Every command line option listed by `-h` can be specified in the config files (just use the long option name).

Once those are created and in place, you do not have to add all of the options to the command line all the time. For instance, you can run `bitumctl` without passing in any parameters on the command line:

```no-highlight
bitumctl getnetworkhashps
2547036949350
```

---

#### 3. Can I run mainnet and testnet daemons and wallets at the same time and on the same machine? 

Yes[^9264], just add `--testnet` to the appropriate spots (`bitumd`, `bitumwallet`, `bitumctl`) and everything will work. This is why they use different ports and data/log directories!

---

#### 4. What are the security implications of using the same RPC server authentication passwords with `bitumd` and `bitumwallet`? 

There is a lot less you can do with access to `bitumd` than you can with access to `bitumwallet`. Importantly, RPC access[^11480] to `bitumwallet`, when the wallet is unlocked, can be used to spend coins.

When `bitumd` and `bitumwallet` are both on the same machine, it probably does not matter all that much, but when you are running more secure setups where the wallet is on a separate machine than `bitumd`, you would pretty clearly not want to use the same credentials for both. Remember that `bitumd` has to be on an Internet-facing machine in order to stay synced to the network (download the block chain data, broadcast transactions, and so on).

On the other hand, the `bitumwallet` that contains your funds, for best security, should really not be on a system that has Internet access as it is significantly more difficult for someone to steal your coins if the wallet that contains them is not even on a machine that is accessible via the Internet. Obviously, if you are staking your coins, you will need at least one Internet-facing `bitumwallet` instance. Thus, the most secure setup involves having one "cold" `bitumwallet` instance that is on a machine that is not Internet-accessible, and a second "hot" `bitumwallet` instance (using a different seed of course) to which the cold bitumwallet instance delegates voting right via the `--ticketaddress` parameter, both of which use different credentials.

---

#### 5. Why am I connecting to only 8 outbound peers? 

There is an intentional unconfigurable limit of 8 outbound peers[^15399]. More outbound peers than that does not help you in any way and is actually worse for both you and the network. This has been tested extremely thoroughly in Bitcoin, including btcsuite (the upstream project for Bitum). All you would do by upping your outbound connections is waste valuable slots of the relatively few public peers there are (there are always a much higher number of "leechers" than there are "seeders").

On the other hand, increasing your maximum connections, which really just increases the number of allowed inbound connections, helps the network by ensuring there are more slots available for new nodes and [SPV](../wallets/spv.md) clients.

---

## <img class="bitum-icon" src="/img/bitum-icons/Sources.svg" /> Sources 

[^8929]: Bitum Forum, [Post 8,929](https://forum.bitum.io/threads/600/#post-8929)
[^9055]: Bitum Forum, [Post 9,062](https://forum.bitum.io/threads/472/page-12#post-9062)
[^9264]: Bitum Forum, [Post 9,264](https://forum.bitum.io/threads/626/#post-9264)
[^11480]: Bitum Forum, [Post 11,480](https://forum.bitum.io/threads/428/#post-11480)
[^15399]: Bitum Forum, [Post 15,399](https://forum.bitum.io/threads/1371/page-2#post-15399)
