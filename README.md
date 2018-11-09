Noodlyappendagecoin Core integration/staging tree
=====================================

Build v0.15.1.0

https://www.noodlyappendagecoin.net

Current Status (as of 11/8/2018):
---------------
I shifted the litecoin fork from v 15 as opposed to v.16.3 and it looks like everything is working properly!  Just remember to backup your wallet.dat file.

If you want to compile this yourself, read the build files in the doc folder.

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


License
-------

Noodlyappendagecoin Core is released under the terms of the MIT license. See [COPYING](COPYING) for more
information or see https://opensource.org/licenses/MIT.





