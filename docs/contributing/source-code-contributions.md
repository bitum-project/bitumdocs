# <img class="bitum-icon" src="/img/bitum-icons/Code.svg" /> Source Code Contributions 

---

## Initial Preparation 

A good first step is to read the [Code Contribution Guidelines documentation](https://github.com/bitum-project/bitumd/blob/master/docs/code_contribution_guidelines.md) to get a good understanding of the policies used by the
project.  That document is primarily focused on the Go codebase but it is still a good start.

The following examples will be split into two sections, one for the Go projects (bitumd, bitumwallet, gominer, etc), and one for projects that do not use Go (bitum, insight, bitumdocs, etc).  In all cases, be sure to check out the README.md in each project if you need help setting the particular project up.

---

## Go 

For projects using Go, ensure you have either the latest Go release or the one prior installed. All Go code changes for Bitum must be compliant with the latest version of Go and the one prior to it.

Below is an example procedure for bitumd.

### One time setup
- Fork bitumd on GitHub
- Run the following commands to obtain bitumd, all dependencies, and install it:

```bash
$ mkdir -p $GOPATH/src/github.com/bitum-project/
$ git clone https://github.com/bitum-project/bitumd $GOPATH/src/github.com/bitum-project/bitumd
$ cd $GOPATH/src/github.com/bitum-project/bitumd
$ go dep ensure
$ go install . ./cmd/...
```

- Add a git remote for your fork:

```bash
$ git remote add <yourname> https://github.com/<yourname>/bitumd.git
```

## Other projects 

For projects not written in Go, the initial setup will depend on the project.  I will use bitumdocs as an example here, but the basic steps are the same for any of the projects.  Specific setup can be seen in the project README.md (for example how to install mkdocs to work on bitumdocs or electron for bitum).

### One time setup 
- Fork bitumdocs on GitHub
- Run the following commands to obtain bitumdocs:

```bash
$ mkdir -p code/bitum
$ cd code/bitum
$ git clone https://github.com/bitum-project/bitumdocs
$ cd bitumdocs
```

- Add a git remote for your fork:

```bash
$ git remote add <yourname> https://github.com/<yourname>/bitumdocs.git
```

---

## Other Considerations 

There are a few other things to consider when doing a pull request.  In the case of the Go code, there is significant test coverage already.  If you are adding code, you should add tests as well.  If you are fixing something, you need to make sure you do not break any existing tests.  For the Go code, there is a script ```goclean.sh``` in each repo to run the tests and the any static checkers we have.  NO code will be accepted without passing all the tests.  In the case of the node.js code (bitum) all code must pass eslint.  You can check this with the command ```npm run lint```.

If you have any questions for contributing, feel free to contact the [Bitum community](https://bitum.io/community).  Bitum team members (and probably community members too) will be happy to help.
