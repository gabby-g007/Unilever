[ select count(*) row_count 
   from ems_evt_grp 
   where evt_grp_nam = '@evt_grp_nam@' 
     and evt_nam   = '@evt_nam@']
 | 
 if (@row_count > 0) 
 {
    [ update ems_evt_grp 
         set grp_nam = '@grp_nam@'
       where evt_grp_nam = '@evt_grp_nam@'
         and evt_nam = '@evt_nam@' ]
  }
  else 
  {  
      [ insert into ems_evt_grp
          ( evt_grp_nam, evt_nam, grp_nam )
        values ( '@evt_grp_nam@',
                 '@evt_nam@',
                 '@grp_nam@' )  ]
  }
