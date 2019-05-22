# <img class="bitum-icon" src="/img/bitum-icons/Bitumtl.svg" /> `bitumctl` Basics

**Prerequisites:**

- Use the latest [bituminstall](cli-installation.md) to install the command line tools.
- [Setup bitumd](bitumd-setup.md) and have it running in the background.
- [Setup bitumwallet](bitumwallet-setup.md) and have it running in the background.

---

`bitumctl` is the client that controls `bitumd` and `bitumwallet` via remote procedure call (RPC). You can use `bitumctl` for many things such as checking your balance, buying tickets, creating transactions, and viewing network information.

`bitumctl` is not a daemon - it does not run permanently in the background - it calls the requested RPC method, prints the response, and then terminates immediately.

---

## Usage

To call `bitumd` RPC methods:

```bash
bitumctl <options> <rpc method> <rpc method args>
```

To call `bitumwallet` RPC methods:

```bash
bitumctl <options> --wallet <rpc method> <rpc method args>
```

To list available options:
```bash
bitumctl --help
```

To list available RPC methods:

```bash
bitumctl -l
```
---

## Unlocking Your Wallet

Some functionality of `bitumwallet` requires the wallet to be unlocked.

The command to unlock your wallet follows: 

```no-highlight
promptsecret | bitumctl --wallet walletpassphrase - 0
```

Here, we are specifying for `bitumctl` to send the command to `bitumwallet` by using the `--wallet` flag. The actual command is `walletpassphrase` which accepts two parameters, your private passphrase and a time limit. Specifying `0` for a time limit unlocks `bitumwallet` without a time limit. Note, however, that this only unlocks the wallet for the current session. If you close the window the wallet is running in, or stop/restart the `bitumwallet`, you will need to unlock it again the next time you start it. 

If the command was successful, you will not get a confirmation from `bitumctl`, but if you look at your `bitumwallet` session, it will say:

```no-highlight
[INF] RPCS: The wallet has been unlocked without a time limit.
```

NOTE: Because unlocking the wallet is required for many functions of `bitumwallet`, `bitumwallet` can be started with the `--promptpass` flag or setting `promptpass=true` in `bitumwallet.conf`.

---

## Checking Your Balance

To send the `getbalance` command to `bitumwallet` using `bitumctl`, enter the following in your shell:

```no-highlight
bitumctl --wallet getbalance
```

This will return all of the balances for all of your accounts.

---

## Getting a New Receiving Address

To send the `getnewaddress` command to `bitumwallet` using `bitumctl`, enter the following in your shell:

```no-highlight
bitumctl --wallet getnewaddress
```

This will generate and return a new payment address. To minimize address reuse, use this command to get a new address for each transaction you wish to receive.

---

## Sending BITUM

To send BITUM to an address, issue the `sendtoaddress` command to `bitumwallet` using `bitumctl`. Enter the following in your shell, filling in the receiving address and amount to send:

```no-highlight
bitumctl --wallet sendtoaddress <address> <amount>
```

If successful, `bitumctl` will return a transaction hash that can be used to watch the transaction on the official [Bitum Block Explorer](../../getting-started/using-the-block-explorer.md).

---

## Check Network Stats

There are many different commands to check different network stats. Here we will cover sending `getinfo` to `bitumd` and `getstakeinfo` to `bitumwallet`.

To get information about your local `bitumd` node, issue the `getinfo` command to `bitumd` using `bitumctl`. Enter the following in your shell:

```no-highlight
bitumctl getinfo
```

To get staking information about the Proof-of-Stake network, issue the `getstakeinfo` command to `bitumwallet` using `bitumctl`. Enter the following in your shell:

```no-highlight
bitumctl --wallet getstakeinfo
```

---

## Additional Commands

More commands can also be found on the [bitumctl RPC Commands](bitumctl-rpc-commands.md) page.

---
