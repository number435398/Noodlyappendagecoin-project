Noodlyappendagecoin Core integration/staging tree
=====================================

Build v0.16.3.0

https://noodlyappendagecoin.org

Current Status (as of 11/4/2018):
---------------
This is a BETA version of the proprosed new wallet.  It currently does not keep proper track of any addresses it creates.  Old wallet.dat files and their related addresses seem to work fine.  This wallet does not have a built in miner and does not support stratum; you must use longpolling instead to mine.  If you mine to an address created within this wallet, it will not show up in the wallet at this time, but it still appears to keep proper track on the network of that mining to the address.  Unless you're testing, I'd advise you do NOT mine to an address created by this wallet at this time.

Though commented out, this wallet is intended to implement a new pchMessageStart code relating to "NDLY" upon full release.

Current code for this wallet has the network forking around Mid November 2018 (and particularly on Nov 22).  If the wallet is not ready by then I will have to alter the fork date for the new BIPs other than this date so don't get too scared.  The explorer at explorer.noodlyappendagecoin.net is still considered to be the main network.  All other forks should sync themselves with the explorer.  Wheter that syncing overrides the current explorer fork or is, itself, overridden by the explorer doesn't matter.  We need the consensus.  If the forks in this wallet are implemented before the network is ready, then this wallet will not be able to change the explorer and any fork created by this wallet will be irrelevant at that time.

If you mine to an old address that is in a wallet.dat file that this wallet opens, it will reflect in this wallet.  If you mine to an address that is created by this wallet, your mining will NOT be reflected on the balance sheet.



What is Noodlyappendagecoin?
----------------

Noodlyappendagecoin is an experimental digital currency that enables instant payments to
anyone, anywhere in the world. Noodlyappendagecoin uses peer-to-peer technology to operate
with no central authority: managing transactions and issuing money are carried
out collectively by the network. Noodlyappendagecoin Core is the name of open source
software which enables the use of this currency.

For more information, as well as an immediately useable, binary version of
the Noodlyappendagecoin Core software, see [https://noodlyappendagecoin.org](https://noodlyappendagecoin.org).

License
-------

Noodlyappendagecoin Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.

Development Process
-------------------

The `master` branch is regularly built and tested, but is not guaranteed to be
completely stable. [Tags](https://github.com/noodlyappendagecoin-project/noodlyappendagecoin/tags) are created
regularly to indicate new official, stable release versions of Noodlyappendagecoin Core.

The contribution workflow is described in [CONTRIBUTING.md](CONTRIBUTING.md).

The developer [mailing list](https://groups.google.com/forum/#!forum/noodlyappendagecoin-dev)
should be used to discuss complicated or controversial changes before working
on a patch set.

Developer IRC can be found on Freenode at #noodlyappendagecoin-dev.

Testing
-------

Testing and code review is the bottleneck for development; we get more pull
requests than we can review and test on short notice. Please be patient and help out by testing
other people's pull requests, and remember this is a security-critical project where any mistake might cost people
lots of money.

### Automated Testing

Developers are strongly encouraged to write [unit tests](src/test/README.md) for new code, and to
submit new unit tests for old code. Unit tests can be compiled and run
(assuming they weren't disabled in configure) with: `make check`. Further details on running
and extending unit tests can be found in [/src/test/README.md](/src/test/README.md).

There are also [regression and integration tests](/test), written
in Python, that are run automatically on the build server.
These tests can be run (if the [test dependencies](/test) are installed) with: `test/functional/test_runner.py`

The Travis CI system makes sure that every pull request is built for Windows, Linux, and OS X, and that unit/sanity tests are run automatically.

### Manual Quality Assurance (QA) Testing

Changes should be tested by somebody other than the developer who wrote the
code. This is especially important for large or high-risk changes. It is useful
to add a test plan to the pull request description if testing the changes is
not straightforward.

Translations
------------

We only accept translation fixes that are submitted through [Bitcoin Core's Transifex page](https://www.transifex.com/projects/p/bitcoin/).
Translations are converted to Noodlyappendagecoin periodically.

Translations are periodically pulled from Transifex and merged into the git repository. See the
[translation process](doc/translation_process.md) for details on how this works.

**Important**: We do not accept translation changes as GitHub pull requests because the next
pull from Transifex would automatically overwrite them again.





