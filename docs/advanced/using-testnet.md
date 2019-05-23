# Using Testnet

Last updated for testnet

---

## Why Use Testnet?

The testnet is a wonderful place where you can experiment with the Bitum applications without worrying that a mistake will cost you real money. It is actually recommended that people use the testnet to learn the basics of the Bitum software and any new features.

Bitum is currently on its 3rd Testnet, also known as testnet. Testnets are periodically reset to help keep a manageable blockchain file size.

---

## How to Run a Testnet Node

Running a testnet node is incredibly easy. Your application of choice will need to download the testnet blockchain, and you will need to create a new wallet file for testnet use. Your mainnet blockchain and wallet files will remain untouched. Switching between the two is incredibly easy.

---

## Bitum

You can switch Bitum between mainnet and testnet in the Settings tab by using the dropdown box labelled "Network".

---

## Command-Line Suite

To launch `bitumd` and `bitumwallet` on testnet, simply add the `--testnet` flag to your launch command. Alternatively, you could put `testnet=1` in all of your config files, but it's usually much faster to use the startup flag.

On the first launch of `bitumd --testnet`, `bitumd` will begin downloading the testnet blockchain to the `data/testnet` folder of `bitumd`'s home directory.

Before you're able to launch `bitumwallet` with the `--testnet` flag, you must create a separate testnet wallet using the `bitumwallet --testnet --create` command. The steps are the same as those found in the [bitumwallet Setup Guide](../wallets/cli/bitumwallet-setup.md).

To issue commands to both `bitumwallet` and `bitumd`, you must also add the `--testnet` flag to any of the `bitumctl` commands that you use. E.g. you would issue the `bitumctl --testnet --wallet getbalance` command to check your testnet balance.
