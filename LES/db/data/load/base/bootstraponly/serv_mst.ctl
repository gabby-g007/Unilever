[MERGE INTO serv_mst s 
      USING (SELECT '@serv_id@' serv_id, '@serv_typ@' serv_typ, '@actcod@' actcod, @retry_fail_flg@ retry_fail_flg, 
                    @auto_cnfrm_flg@ auto_cnfrm_flg, @yestoall_flg@ yestoall_flg, to_date('@moddte@','YYYYMMDDHH24MISS') moddte, 
                    '@mod_usr_id@' mod_usr_id
                    FROM dual) input 
         ON (s.serv_id = input.serv_id) 
 WHEN MATCHED THEN 
     UPDATE SET serv_typ = input.serv_typ, 
                actcod = input.actcod, 
                retry_fail_flg = input.retry_fail_flg, 
                auto_cnfrm_flg = input.auto_cnfrm_flg, 
                yestoall_flg = input.yestoall_flg, 
                moddte = input.moddte, 
                mod_usr_id = input.mod_usr_id
 WHEN NOT MATCHED THEN
     INSERT (serv_id, serv_typ, actcod, retry_fail_flg, auto_cnfrm_flg, yestoall_flg, moddte, mod_usr_id) 
     VALUES (input.serv_id, input.serv_typ, input.actcod, input.retry_fail_flg, input.auto_cnfrm_flg, input.yestoall_flg, input.moddte, 
             input.mod_usr_id)]
