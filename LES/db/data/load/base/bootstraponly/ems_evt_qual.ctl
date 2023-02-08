[ select count(*) row_count 
   from ems_evt_qual 
   where evt_nam = '@evt_nam@'
     and evt_seq = @evt_seq@] 
 | 
 if (@row_count > 0) 
 {
    [ update ems_evt_qual
         set evt_fld_nam = '@evt_fld_nam@',
             evt_fld_typ = '@evt_fld_typ@',
             moddte = '@moddte@',
             mod_usr_id = '@mod_usr_id@',
             grp_nam = '@grp_nam@'
       where evt_nam = '@evt_nam@'
         and evt_seq = @evt_seq@ ]
  }
  else 
  {  
      [ insert into ems_evt_qual
         ( evt_nam , evt_seq , evt_fld_nam , evt_fld_typ , grp_nam )
        values 
         ( '@evt_nam@', @evt_seq@, '@evt_fld_nam@', '@evt_fld_typ@',
         '@grp_nam@' )  ]
  }
