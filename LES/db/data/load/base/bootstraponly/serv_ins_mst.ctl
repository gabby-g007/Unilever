[MERGE INTO serv_ins_mst s 
      USING (SELECT '@serv_ins_id@' serv_ins_id, to_date('@moddte@','YYYYMMDDHH24MISS') moddte, '@mod_usr_id@' mod_usr_id
                    FROM dual) input 
         ON (s.serv_ins_id = input.serv_ins_id) 
 WHEN NOT MATCHED THEN
     INSERT (serv_ins_id, moddte, mod_usr_id) 
     VALUES (input.serv_ins_id, input.moddte, input.mod_usr_id)]
