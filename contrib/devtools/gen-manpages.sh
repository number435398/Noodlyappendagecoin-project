#!/bin/bash

TOPDIR=${TOPDIR:-$(git rev-parse --show-toplevel)}
SRCDIR=${SRCDIR:-$TOPDIR/src}
MANDIR=${MANDIR:-$TOPDIR/doc/man}

NOODLYAPPENDAGECOIND=${NOODLYAPPENDAGECOIND:-$SRCDIR/noodlyappendagecoind}
NOODLYAPPENDAGECOINCLI=${NOODLYAPPENDAGECOINCLI:-$SRCDIR/noodlyappendagecoin-cli}
NOODLYAPPENDAGECOINTX=${NOODLYAPPENDAGECOINTX:-$SRCDIR/noodlyappendagecoin-tx}
NOODLYAPPENDAGECOINQT=${NOODLYAPPENDAGECOINQT:-$SRCDIR/qt/noodlyappendagecoin-qt}

[ ! -x $NOODLYAPPENDAGECOIND ] && echo "$NOODLYAPPENDAGECOIND not found or not executable." && exit 1

# The autodetected version git tag can screw up manpage output a little bit
NDLVER=($($NOODLYAPPENDAGECOINCLI --version | head -n1 | awk -F'[ -]' '{ print $6, $7 }'))

# Create a footer file with copyright content.
# This gets autodetected fine for bitcoind if --version-string is not set,
# but has different outcomes for bitcoin-qt and bitcoin-cli.
echo "[COPYRIGHT]" > footer.h2m
$NOODLYAPPENDAGECOIND --version | sed -n '1!p' >> footer.h2m

for cmd in $NOODLYAPPENDAGECOIND $NOODLYAPPENDAGECOINCLI $NOODLYAPPENDAGECOINTX $NOODLYAPPENDAGECOINQT; do
  cmdname="${cmd##*/}"
  help2man -N --version-string=${NDLVER[0]} --include=footer.h2m -o ${MANDIR}/${cmdname}.1 ${cmd}
  sed -i "s/\\\-${NDLVER[1]}//g" ${MANDIR}/${cmdname}.1
done

rm -f footer.h2m