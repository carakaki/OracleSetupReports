------------------------------------------------------------------------------------------------------------------------
-- Report: Manage Taxes
-- Data Model: Manage Taxes DM
-- List of Values: lovTax
-- Cristian A. Arakaki - 2026-10-19 - Manage Taxes
------------------------------------------------------------------------------------------------------------------------
select ztt.tax_full_name,
       ztb.tax
  from zx_taxes_b ztb,
       zx_taxes_tl ztt
 where ztb.tax_id = ztt.tax_id
   and ( ( ztt.language = :xdo_user_ui_oracle_lang
   and ztt.source_lang != :xdo_user_ui_oracle_lang )
    or ztt.language = ztt.source_lang )
       -- PARAMETERS
   and ( :ptaxregime is null
    or ztb.tax_regime_code = :ptaxregime )