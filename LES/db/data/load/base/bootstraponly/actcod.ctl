/* UNI-928 */
publish data
 where actcod = '@actcod@'
   AND actcod_typ = '@actcod_typ@'
   AND lngdsc = '@lngdsc@'
|
create activity code
 where @* catch(@?) 
    