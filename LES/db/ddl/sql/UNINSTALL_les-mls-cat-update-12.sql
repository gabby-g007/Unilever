#use $DCSDIR/include
#include <dcsddl.h>
#include <dcscolwid.h>
#include <dcstbldef.h>
#use $MOCADIR/include
#include <sqlDataTypes.h>
#include <varcolwid.h>

mset command on

[update les_mls_cat
    set mls_text = 'OK to close? Select (E) Equipment or (C) Cancel. Do NOT select (S) Shipment'
  where grp_nam = 'dcs_rdt_dlg'
    and mls_text like 'OK to close?%'];

RUN_DDL

mset command off
