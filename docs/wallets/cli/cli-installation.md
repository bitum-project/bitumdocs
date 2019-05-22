# <img class="bitum-icon" src="/img/bitum-icons/Bitumtl.svg" /> CLI Installation guide

Last updated for CLI release v{{ cliversion }}.

---

`bituminstall` is the recommended method to install the Bitum command line interface tools `bitumd`, `bitumwallet`, and `bitumctl`.

`bituminstall` is an automatic installer and upgrader for the Bitum software. The newest release can be found here: <https://github.com/bitum-project/bitum-release/releases>. Binaries are provided for Windows, macOS and Linux.

`bituminstall` will automatically download the precompiled, signed binary package found on GitHub, verify the signature of this package, copy the binaries within the package to a specific folder dependent on OS, create configuration files with settings to allow the 3 applications to communicate with each other, and run you through the wallet creation process. After running through `bituminstall`, you will be able to launch the software with no additional configuration.

??? info "macOS instructions (click to expand)"

    1. Download the `bituminstall-darwin-amd64-v{{ cliversion }}` file. (32 bit builds for macOS are not available):

    1. Make `bituminstall-darwin-amd64-v{{ cliversion }}` an executable within your terminal, and run it:

        Navigate to the directory where the bituminstall file was downloaded using the `cd` command, run `chmod` with `u+x` mode on the bituminstall file, and run the executable that is created. Below is an example of the commands (change directories or filename as needed):

        `cd ~/Downloads/`

        `chmod u+x bituminstall-darwin-amd64-v{{ cliversion }}`

        `./bituminstall-darwin-amd64-v{{ cliversion }}`

    1. The executable binaries for `bitumd`, `bitumwallet`, and `bitumctl` can now be found in the `~/bitum/` directory. Before the `bituminstall` process completes, you will be taken to the wallet creation prompt. Follow the steps within the [Wallet Creation Walkthrough](../../wallets/cli/bitumwallet-setup.md#wallet-creation-walkthrough) of the bitumwallet Setup guide to finish.

??? info "Linux instructions (click to expand)"

    1. Download the correct file:

        For 32-bit computers, download the `bituminstall-linux-386-v{{ cliversion }}` file.

        For 64-bit computers, download the `bituminstall-linux-amd64-v{{ cliversion }}` file.

        For 32-bit ARM computers, download the `bituminstall-linux-arm-v{{ cliversion }}` file.

        For 64-bit ARM computers, download the `bituminstall-linux-arm64-v{{ cliversion }}` file.

    1. Make the downloaded file an executable within your terminal and run it:

        Navigate to the directory where the bituminstall file was downloaded using the `cd` command, run `chmod` with `u+x` mode on the bituminstall file, and run the executable that is created. Below is an example of the commands (change directories or filename as needed):

        `cd ~/Downloads/`

        `chmod u+x bituminstall-linux-amd64-v{{ cliversion }}`

        `./bituminstall-linux-amd64-v{{ cliversion }}`

    1. The binaries for `bitumd`, `bitumwallet`, and `bitumctl` can now be found in the `~/bitum/` directory. Before the `bituminstall` process completes, you will be taken to the wallet creation prompt. Follow the steps within the [Wallet Creation Walkthrough](../../wallets/cli/bitumwallet-setup.md#wallet-creation-walkthrough) of the bitumwallet Setup guide to finish.

??? info "Windows instructions (click to expand)"

    1. Download the correct file:

        For 32-bit computers, download the `bituminstall-windows-386-v{{ cliversion }}.exe` file.

        For 64-bit computers, download the `bituminstall-windows-amd64-v{{ cliversion }}.exe` file.


    1. Run the bituminstall executable file. You can either double click it or run it from the Command Prompt.

    1. The binaries for `bitumd`, `bitumwallet`, and `bitumctl` can now be found in the `%HOMEPATH%\bitum\` directory (usually `%HOMEPATH%` is `C:\Users\<username>\`). Before the `bituminstall` process completes, you will be taken to the wallet creation prompt. Follow the steps within the [Wallet Creation Walkthrough](../../wallets/cli/bitumwallet-setup.md#wallet-creation-walkthrough) of the bitumwallet Setup guide to finish.
