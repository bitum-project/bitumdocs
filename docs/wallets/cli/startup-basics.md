# Startup Basics

---

This guide applies to command-line application users. Bitum users can safely ignore the use of config files - Bitum handles basic configuration automatically. It is also worth noting that some of our guides show configuration file settings and other guides show startup command flags. 

---

## Configuration File Locations

All of the Bitum software, when started, reads from a configuration file to determine which settings it should enable/disable/set during that initial load. All of the command line startup flags `(e.g. bitumwallet --testnet)` can be replaced by settings within the appropriate configuration file `(e.g. bitumwallet --testnet could be replaced by testnet=1 in bitumwallet.conf)`.

These configuration files are located within the application home directory of the application. The location of these default home directories for Windows, macOS, and Linux are listed below:

| OS      | bitumd, bitumwallet, bitumctl App Directories    |
| -------:|:------------------------------------------:|
| Windows | `%LOCALAPPDATA%\Bitumd\`                     |
|         | `%LOCALAPPDATA%\Bitumwallet\`                |
|         | `%LOCALAPPDATA%\Bitumctl\`                   |
| macOS   | `~/Library/Application Support/Bitumd/`      |
|         | `~/Library/Application Support/Bitumwallet/` |
|         | `~/Library/Application Support/Bitumctl/`    |
| Linux   | `~/.bitumd/`                                 |
|         | `~/.bitumwallet/`                            |
|         | `~/.bitumctl/`                               |

Each of these folders is allowed its own `.conf` file, named after the individual application (`e.g. bitumd uses bitumd.conf`). Please also note that the `Bitumd` and `Bitumwallet` home directories are automatically created when each application is first launched. You will have to manually create a `Bitumctl` home directory to utilize a config file.

The [bituminstall](cli-installation.md) installation method automatically creates configuration files, with the [minimum configuration settings](../../advanced/manual-cli-install.md#minimum-configuration) already enabled. 

The [Manual Installation](../../advanced/manual-cli-install.md#installation) method includes sample configuration files within the .zip/.tar.gz. It is recommended to copy these config files into the appropriate directory described above, and rename them to remove 'sample-'. These files have many settings commented out (comments are not read by the program during runtime) so all of these settings are effectively disabled. You can enable these pre-written settings by simply deleting the semi-colon before the line.

---

## Startup Command Flags

A majority of the settings you are able to set via the configuration file can also be passed to the application as parameters during launch. For example, the following OS-specific commands would open `bitumd` for Testnet use, an alternative to using `testnet=1` in your config file:

    Windows: bitumd.exe --testnet
    macOS: ./bitumd --testnet
    Linux: ./bitumd --testnet

The above example would first look to the `bitumd` configuration file for settings and then look to the executable command to enable the testnet setting. 

---

## Advanced Usage

[Full List of Options for Each Application](bitumd-and-bitumwallet-cli-arguments.md)


## Next:

[bitumd Setup Guide](bitumd-setup.md)
