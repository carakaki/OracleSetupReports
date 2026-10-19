--------------------------------------------------------------------------------
-- Report: Manage Tax Regimes
-- Data Model: Manage Tax Regimes DM
-- Data Set: ZX_REGIMES_B
--------------------------------------------------------------------------------
select zrt.tax_regime_name,
       zrb.tax_regime_code,
       zrb.country_code,
       zrb.effective_from,
       zrb.effective_to,
       zrb.tax_currency_code,
       zrb.minimum_accountable_unit,
       zrb.tax_precision,
       zrb.rounding_rule_code,
       zrb.allow_rounding_override_flag,
       zrb.regn_num_same_as_le_flag,
       zrb.bucket_level_flag,
       zrb.validation_type,
       zrb.validation_level,
       zrb.uniqueness_validation_level,
       zrb.cross_regime_compounding_flag,
       zrb.regime_precedence
  from zx_regimes_b zrb,
       zx_regimes_tl zrt
 where zrb.tax_regime_id = zrt.tax_regime_id
 -- Idioma del usuario de la aplicacion o el idioma de configuración de la aplicación
   and ( ( zrt.language = :xdo_user_ui_oracle_lang
   and zrt.source_lang != :xdo_user_ui_oracle_lang )
    or ( zrt.language = zrt.source_lang ) )
    -- PARAMETERS
   and ( :ptaxregime is null
    or zrb.tax_regime_id = :ptaxregime )