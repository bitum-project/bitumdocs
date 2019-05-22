# bitumdocs

[![ISC License](http://img.shields.io/badge/license-ISC-blue.svg)](http://copyfree.org)

`bitumdocs` is source code for the [Bitum project documentation](https://docs.bitum.io).

`bitumdocs` is built with [MkDocs](https://www.mkdocs.org/) - a documentation toolkit written in Python.

## Development

#### Install Python

In order to develop on `bitumdocs` you will need [Python](https://www.python.org/) installed on your system. Version 3.7 is recommended because this is the version used by the live site, however MkDocs does also support versions 2.7, 3.4, 3.5 and 3.6.

You can verify your installation of Python by checking the output from these two commands:

```bash
$ python --version
Python 3.7.0
$ pip --version
pip 18.0
```

#### Install dependencies

To install MkDocs and all of the other Python libraries required by `bitumdocs`:

```bash
$ pip install --user -r requirements.txt
```

#### Getting started

This repo contains a single configuration file named `mkdocs.yml`, and a folder named `docs` that will contain the documentation source files. MkDocs comes with a built-in dev-server that lets you preview the documentation as you work on it. Make sure you are in the same directory as the `mkdocs.yml` configuration file, and then start the server by running the `mkdocs serve` command:

```bash
$ mkdocs serve
INFO    -  Building documentation...
INFO    -  Cleaning site directory
[I 160402 15:50:43 server:271] Serving on http://127.0.0.1:8000
[I 160402 15:50:43 handlers:58] Start watching changes
[I 160402 15:50:43 handlers:60] Start detecting changes
```
If you are using Windows, you may need to inform python to search sys.path for the mkdocs module:

```bash
$ python -m mkdocs serve
INFO    -  Building documentation...
INFO    -  Cleaning site directory
[I 190207 18:05:35 server:298] Serving on http://127.0.0.1:8000
[I 190207 18:05:35 handlers:59] Start watching changes
[I 190207 18:05:35 handlers:61] Start detecting changes
```
Open up <http://127.0.0.1:8000> in your browser, and you will see the documentation home page being displayed. The dev-server also supports auto-reloading, and will rebuild your documentation whenever anything in the configuration file or the documentation directory changes.

## Deploying

To deploy `bitumdocs`, first build the documentation:

```bash
$ ./bin/build_docs.sh
```

This will build the documentation into a new directory named `site`.

The version of `bitumdocs` that you just built only uses static files which are all contained within the `site/` directory, so this directory can be hosted using almost any web server software.

#### Docker

`bitumdocs` can also be built and hosted in a [Docker](https://www.docker.com/) container. Build the container using:

```bash
$ ./bin/build.sh
```

The container can then be run with:

```bash
$ docker run -d --rm -p <local port>:80 bitum/bitumdocs:latest
```

## Pages to review upon new releases

#### CLI releases

- `advanced/manual-cli-install.md`
- `wallets/cli/bitumd-and-bitumwallet-cli-arguments.md`
- `wallets/cli/bitumctl-rpc-commands.md`
- `wallets/cli/cli-installation.md`
- `advanced/solo-proof-of-stake-voting.md`

#### Bitum releases

- `wallets/bitum/bitum-setup.md`
- `wallets/bitum/using-bitum.md`

#### gominer release

- `mining/proof-of-work/pool-mining/gominer.md`

#### Testnet reset

- `advanced/using-testnet.md`


## Getting help

To get help with `bitumdocs` please create a [GitHub issue](https://github.com/bitum-project/bitumdocs/issues) or the join the [Bitum community](https://bitum.io/community/) using your preferred chat platform.
