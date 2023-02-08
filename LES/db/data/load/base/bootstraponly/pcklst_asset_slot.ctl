[select count(*) row_count
   from pcklst_asset_slot
  where slot_typ_id = @slot_typ_id@]
|
if (@row_count > 0)
{
    [update pcklst_asset_slot
        set slot_typ_id = @slot_typ_id@,
            asset_typ = '@asset_typ@',
            asset_slot_code = '@asset_slot_code@',
            slot_asset_typ = '@slot_asset_typ@',
            ins_dt = sysdate,
            last_upd_dt = sysdate,
            ins_user_id = '@ins_user_id@',
            last_upd_user_id = '@last_upd_user_id@'
      where slot_typ_id = @slot_typ_id@]
}
else
{
    [insert
       into pcklst_asset_slot(slot_typ_id, asset_typ, asset_slot_code, slot_asset_typ, ins_dt, last_upd_dt, ins_user_id, last_upd_user_id)
     VALUES (@slot_typ_id@, '@asset_typ@', '@asset_slot_code@', '@slot_asset_typ@', sysdate , sysdate, '@ins_user_id@', '@last_upd_user_id@')]
}