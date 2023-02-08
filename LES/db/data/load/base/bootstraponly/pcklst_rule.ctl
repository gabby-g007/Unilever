[select count(*) row_count
   from pcklst_rule
  where pcklst_rule_id = @pcklst_rule_id@]
|
if (@row_count > 0)
{
    [update pcklst_rule
        set pcklst_rule_id = @pcklst_rule_id@,
            pcklst_rule_name = '@pcklst_rule_name@',
            wh_id = '@wh_id@',
            client_id = '@client_id@',
            re_list_flg = @re_list_flg@,
            allow_split_flg = @allow_split_flg@,
            list_typ = '@list_typ@',
            one_pass_only = '@one_pass_only@',
            assign_slot_flg = @assign_slot_flg@,
            asset_typ = '@asset_typ@',
            valid_flg = @valid_flg@,
            cnf_mtused_prt = @cnf_mtused_prt@,
            cmdtxt = '@cmdtxt@',
            opr_cod = '@opr_cod@',
            pick_ord_by = '@pick_ord_by@',
            max_start_picks = to_number('@max_start_picks@'),
            drop_at_wrkzone_change = @drop_at_wrkzone_change@,
            frc_pickup_prev = @frc_pickup_prev@,
            rsm_lst_pck_prev_opr = @rsm_lst_pck_prev_opr@,
            cmb_list_flg = @cmb_list_flg@,
            prevent_pck_cons = @prevent_pck_cons@,
            pick_to_lvl = '@pick_to_lvl@',
            wa_fit_cri = '@wa_fit_cri@',
            ins_dt = sysdate,
            last_upd_dt = sysdate,
            ins_user_id = '@ins_user_id@',
            last_upd_user_id = '@last_upd_user_id@',
            max_assets = @max_assets@
      where pcklst_rule_id = @pcklst_rule_id@]
}
else
{
    [insert
       into pcklst_rule(pcklst_rule_id, pcklst_rule_name, wh_id, client_id, re_list_flg, allow_split_flg, list_typ, one_pass_only, assign_slot_flg, asset_typ, valid_flg, cnf_mtused_prt, cmdtxt, opr_cod, pick_ord_by, max_start_picks, drop_at_wrkzone_change, frc_pickup_prev, rsm_lst_pck_prev_opr, cmb_list_flg, prevent_pck_cons, pick_to_lvl, wa_fit_cri, ins_dt, last_upd_dt, ins_user_id, last_upd_user_id, max_assets)
     VALUES (@pcklst_rule_id@, '@pcklst_rule_name@', '@wh_id@', '@client_id@', @re_list_flg@, @allow_split_flg@, '@list_typ@', '@one_pass_only@', @assign_slot_flg@, '@asset_typ@', @valid_flg@, @cnf_mtused_prt@, '@cmdtxt@', '@opr_cod@', '@pick_ord_by@', to_number('@max_start_picks@'), @drop_at_wrkzone_change@, @frc_pickup_prev@, @rsm_lst_pck_prev_opr@, @cmb_list_flg@, @prevent_pck_cons@, '@pick_to_lvl@', '@wa_fit_cri@', sysdate, sysdate, '@ins_user_id@', '@last_upd_user_id@', @max_assets@)]
}