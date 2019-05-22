# <img class="bitum-icon" src="/img/bitum-icons/Wallet.svg" /> Bitum Setup Guide

Last updated for Bitum v{{ bitumversion }}.

---

`Bitum` is a graphical user interface for `bitumwallet`. When this application launches, it automatically starts its own instance of the command line tools `bitumd` and `bitumwallet` in the background.

!!! info "Blockchain Download"

    Without [SPV](../../wallets/spv.md) enabled, Bitum needs to download a full copy of the Bitum blockchain before it can be used. This means that a large download must be completed and a large amount of storage space must be available on the device where Bitum is installed. You can check the current size of all serialized blocks via [bitumdata charts](https://explorer.bitum.io/charts#blockchain-size). The total size of Bitum will be bigger, since additional wallet data is stored on your device.

---

## Download and Install

The latest version of Bitum can be downloaded from <https://bitum.io/downloads>.

??? info "Windows instructions (click to expand)"

    1. Download the Windows installer `bitum-v{{ bitumversion }}.exe`.

    1. Double click the installer and follow the instructions.

    1. The installer adds a shortcut to Bitum on your desktop.

??? info "macOS instructions (click to expand)"

    1. Download the `bitum-v{{ bitumversion }}.dmg` file.

    1. Double click the `bitum-v{{ bitumversion }}.dmg` file to mount the disk image.

    1. Drag the `bitum.app` file into the link to your Applications folder within the disk image.

??? info "Linux instructions (click to expand)"

    1. Download the `bitum-v{{ bitumversion }}.tar.gz` file.

    1. Navigate to the download location and extract `bitum-v{{ bitumversion }}.tar.gz`.

    1. The extracted files include an executable named `bitum`.

---

## Open and Set Up Bitum

Opening Bitum for the first time will display the following screen:

![Bitum startup screen](/img/bitum/setup/startup.png)

Select your desired language and press **Continue**. You will then be offered various privacy options which allow you to restrict which external services Bitum will contact. The "Standard" option is recommended for most users, as this will enable all of the features in Bitum and provide the best user experience.

![Bitum privacy options](/img/bitum/setup/privacy-options.png)

A screen will be displayed which allows you to enable SPV mode if desired.

![Bitum SPV options](/img/bitum/setup/spv-options.png)

After making your choice, a short presentation explaining Bitum blockchain, wallet, keys, staking/governance, and safety tips is shown. Please read these slides carefully if you are new to Bitum.

The following screen should be displayed next.

![Bitum blockchain download screen](/img/bitum/setup/chain-downloading.png)

A large progress bar on this screen shows the progress of the blockchain download. If you chose to enable SPV mode, this bar will be filled immediately because downloading the blockchain is not required.

!!! info "Pausing the download"

    If you close Bitum or shut down your PC while the download is in progress, the download will be paused and progress will not be lost. It will be resumed from the same point next time Bitum is started.

    This means you can download the blockchain in multiple sessions if required.

You can begin to set up your wallet before the download completes. You have two options:

1. [Create a New Wallet](#create-a-new-wallet) - Press this button if this is your first time using Bitum.

1. [Restore Existing Wallet](#restore-existing-wallet) - Press this button if you already have a wallet seed you would like to use.

---

## Create a New Wallet

As Bitum allows you to manage multiple wallets on one PC, you must give a name to your wallet so it can be identified. Enter a name and press the **Continue** button.

!!! danger "Critical Information"

    {{ seedWarning1 }}

    {{ seedWarning2 }}

    {{ seedWarning3 }}

    {{ seedWarning4 }}

The 33 word seed for your new wallet is displayed on the screen (obscured in the below image). Record the seed and store it somewhere safe.

![Bitum wallet seed screen](/img/bitum/setup/wallet-seed.png)

Press **Continue** and re-enter the missing words from your seed on the next screen. This is to confirm you have recorded your seed correctly.

![Bitum seed entry screen](/img/bitum/setup/seed-entered.png)

Create a passphrase for your wallet. This passphrase will be used to unlock your wallet when creating transactions.

Press **Create Wallet** and your wallet setup is complete. You will be taken back to the blockchain download progress bar. Once the download has been completed, Bitum will open the Overview page for your new wallet and you will be able to begin sending and receiving Bitum.

---

## Restore Existing Wallet

1. As Bitum allows you to manage multiple wallets on one PC, you must give a name to your wallet so it can be identified.

1. Advanced users can use the "Watch only" option and enter a public key to configure a watch only wallet.

1. Enter your seed into the **Confirm Seed** text box.

1. Create a private passphrase for your wallet.

1. Select **Create Wallet**. Wait for the blockchain to be downloaded.

1. You will be prompted to enter the stakepool API key associated with this wallet. This can be left blank if you don't have one.

1. The blockchain will now be scanned for any transactions belonging to this wallet.
