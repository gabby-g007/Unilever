[ select count(*) row_count 
   from ems_evt_config 
   where evt_nam = '@evt_nam@'] 
 | 
 if (@row_count > 0) 
 {
    [ update ems_evt_config  
         set priority = @priority@,
             ack_flg = @ack_flg@,
             exp_flg = @exp_flg@,
             exp_tm = @exp_tm@,
             esc_flg = @esc_flg@,
             esc_tm = @esc_tm@,
             esc_evt = '@esc_evt@',
             prm_lck_flg = @prm_lck_flg@,
             moddte = '@moddte@',
             mod_usr_id = '@mod_usr_id@'
       where evt_nam = '@evt_nam@' ]
  }
  else 
  {  
      [ insert into ems_evt_config
            (evt_nam, priority,
             ack_flg, exp_flg,
             exp_tm, esc_flg, 
             esc_tm, esc_evt,
             prm_lck_flg, moddte,
             mod_usr_id, grp_nam)
       values
            ('@evt_nam@', @priority@,
              @ack_flg@, @exp_flg@,
              @exp_tm@, @esc_flg@,
              @esc_tm@, '@esc_evt@',
              @prm_lck_flg@, '@moddte@',
             '@mod_usr_id@', '@grp_nam@' )  ]
  }
