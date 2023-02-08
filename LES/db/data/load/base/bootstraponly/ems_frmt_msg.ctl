[ select count(*) row_count 
   from ems_frmt_msg 
   where evt_nam   = '@evt_nam@'
     and locale_id = '@locale_id@'] 
 | 
 if (@row_count > 0) 
 {
    [ update ems_frmt_msg
         set subfld = '@subfld@',
             frmt_msg = '@frmt_msg@',
             grp_nam = '@grp_nam@'
       where evt_nam = '@evt_nam@'
         and locale_id = '@locale_id@' ]
  }
  else 
  {  
      [ insert into ems_frmt_msg
          ( evt_nam, locale_id, subfld, frmt_msg, grp_nam )
        values ( '@evt_nam@',
                 '@locale_id@',
                 '@subfld@',
                 '@frmt_msg@',
                 '@grp_nam@' )  ]
  }
