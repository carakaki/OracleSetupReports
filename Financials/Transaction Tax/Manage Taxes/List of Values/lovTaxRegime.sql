------------------------------------------------------------------------------------------------------------------------
-- Report: Manage Taxes
-- Data Model: Manage Taxes DM
-- List of Values: lovTaxRegime
-- Cristian A. Arakaki - 2026-10-19 - Manage Taxes
------------------------------------------------------------------------------------------------------------------------
select zrt.tax_regime_name descr,
       zrb.tax_regime_id value
  from zx_regimes_b zrb,
       zx_regimes_tl zrt
 where zrb.tax_regime_id = zrt.tax_regime_id
   and ( ( zrt.language = :xdo_user_ui_oracle_lang
   and zrt.source_lang != :xdo_user_ui_oracle_lang )
    or ( zrt.language = zrt.source_lang ) )