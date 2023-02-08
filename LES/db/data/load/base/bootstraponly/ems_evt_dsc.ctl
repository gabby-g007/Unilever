[select count(*) row_count
   from ems_evt_dsc
  where evt_nam = '@evt_nam@'
    and locale_id = '@locale_id@'
]
|
if (@row_count > 0)
{
    [update ems_evt_dsc
        set lngdsc    = '@lngdsc@',
            short_dsc = '@short_dsc@',
            grp_nam   = '@grp_nam@'
      where evt_nam   = '@evt_nam@'
        and locale_id = '@locale_id@'
    ]
}
else
{
    [insert into ems_evt_dsc
        (evt_nam, locale_id, lngdsc, short_dsc, grp_nam)
     VALUES
        ('@evt_nam@', '@locale_id@', '@lngdsc@', '@short_dsc@', '@grp_nam@')
    ]
}
