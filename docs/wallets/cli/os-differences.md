# Operating System Differences 

---

The purpose of this page is to explain the key differences for running the cross-platform command-line applications on Windows, Linux, and macOS.

---

### Launch Commands

The first major difference in the command line applications (`bitumd`,`bitumwallet`,`bitumctl`) is how you launch them from the command line. This is not as much of an operating system as it is a difference in shells. Windows comes with Command Prompt and PowerShell installed. macOS uses Bash within the Terminal application, and many Linux distributions use Bash as well. Below are examples of the basic run commands for Bash and Command Prompt.

**Command Prompt:** `bitumd.exe`, `bitumwallet.exe`, `bitumctl.exe` <br />
**Bash:** `./bitumd`, `./bitumwallet`, `./bitumctl`

Some of our guides might be OS-agnostic with the launch commands. If a guide says to run `bitumctl --wallet getbalance`, it's referring to using `bitumctl.exe --wallet getbalance` for Command Prompt and `./bitumctl --wallet getbalance` for Bash.

### Application Directory Locations

The other way the command line clients differ is the location of each application directory (blocks, wallets, log files, configuration files are all stored within the data directory). Below is a table of the default application directories for each application. 

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
