#use $DCSDIR/include
#include <dcsddl.h>
#include <dcscolwid.h>
#include <dcstbldef.h>
#use $MOCADIR/include
#include <sqlDataTypes.h>
#include <varcolwid.h>
mset command on
[insert
   into worktype(worktype_id)
 values ('CPCK')] catch(@?);
[insert
   into dscmst(colnam, colval, locale_id, lngdsc, short_dsc, grp_nam, dtype)
 values ('worktype_id', 'CPCK', 'US_ENGLISH', 'Cluster Pick', '', 'lm_data', '')] catch(@?);
[insert
   into dscmst(colnam, colval, locale_id, lngdsc, short_dsc, grp_nam, dtype)
 values ('actcod', 'CPCK', 'US_ENGLISH', 'Cluster Pick', '', '', '')] catch(@?);
[insert
   into actcod(actcod, actcod_typ, voc_cod, lms_flg, worktype_id, indflg, asgn_typ, disc_proc_id, ins_dt, last_upd_dt, ins_user_id, last_upd_user_id, rollup_uom)
 values ('CPCK', 'WORK', '', '1', 'CPCK', '0', 'O', '', sysdate, sysdate, '', '', '')] catch(@?);
RUN_DDL
mset command off