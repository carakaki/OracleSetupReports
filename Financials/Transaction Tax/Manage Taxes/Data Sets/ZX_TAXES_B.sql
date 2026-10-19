--------------------------------------------------------------------------------
-- Report: Manage Taxes
-- Data Model: Manage Taxes DM
-- Data Set: ZX_TAXES_B
--------------------------------------------------------------------------------
select ztb.tax_regime_code,
       ztb.content_owner_id,
       ztb.tax,
       ztt.tax_full_name,
       ztb.effective_from,
       ztb.effective_to,
       ztb.allow_exceptions_flag,
       ztb.allow_exemptions_flag
  from zx_taxes_b ztb,
       zx_taxes_tl ztt
 where ztb.tax_id = ztt.tax_id
   and ( ( ztt.language = :xdo_user_ui_oracle_lang
   and ztt.source_lang != :xdo_user_ui_oracle_lang )
    or ztt.language = ztt.source_lang )