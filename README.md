Noodlyappendagecoin Core integration/staging tree
=====================================

Version 0.15.2
NDL Release v 0.15.2
I have just released version 0.15.2 of the Noodlyappendagecoin Wallet!
Periodically backup your wallet.dat file!  Especially when changing wallet programs!
This version is meant to be the full usable version, however, it will not fully take hold until February 1st, 2019.  So if you have any concerns, or notice any bugs, this version is not considered to be fully usable or “Official” until then.
The old wallet will work for mining until that point.  This wallet does not mine unto itself, however you can use a newer version of cpuminer to mine to the wallet using long-polling, though you must specify a specific address to mine to.
When this wallet is opened after 12:01am on February 1st, it will shift to a new pchmessage code.  This means all other wallets not hardcoded to the new code (“NDLY”) will no longer connect to the network.  If you open this wallet before that date and time, it will use the old code.  You will have to close it and reopen it to have it initiate with the new code (as it only checks the date and the code each time you open the wallet).
On February 1st, later in the day, the network will fork to apply BIP34. Then it will fork again on February 2nd for BIP65, then again on February 2nd for BIP66.  On February 8th, it will fork for BIP68, BIP112, and BIP113.  Then on February 12th, it will fork for BIP141, BIP143, and BIP147.  
Once these forks are completed we will be so up to date we will be eligible to be added to exchanges.
Previous wallets will no longer function at that point.   Even if an older wallet is coded with the new pchmessage, all blocks generated by it will be rejected and a small percentage of its sent transactions will actually be accepted (due to DER encoding).
If you wish to compile the code yourself, please refer to the build text files located in the docs folder for instructions.


https://noodlyappendagecoin.net

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


