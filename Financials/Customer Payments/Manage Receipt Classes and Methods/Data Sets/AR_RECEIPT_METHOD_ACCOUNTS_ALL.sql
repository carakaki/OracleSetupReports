---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: AR_RECEIPT_METHOD_ACCOUNTS_ALL
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT armaa.receipt_method_id
      ,armaa.bank_account_id
      ,armaa.org_id
      ,houft.name AS org_name
      ,hp_bank.party_name AS bank_name
      ,hp_branch.party_name AS branch_name
      ,cba.bank_account_name
      ,cba.bank_account_num
      ,armaa.primary_flag
      ,armaa.override_remit_account_flag
      ,cba.currency_code
      ,armaa.min_receipt_amount
      ,armaa.clearing_days
      ,armaa.risk_elimination_days
      ,armaa.start_date
      ,armaa.end_date
      ,armaa.cash_ccid
      ,armaa.unapplied_ccid
      ,armaa.unidentified_ccid
      ,armaa.on_account_ccid
      ,armaa.unearned_ccid
      ,armaa.earned_ccid
      ,armaa.claim_receivables_trx_id
  FROM ar_receipt_method_accounts_all armaa
      ,hr_organization_units_f_tl houft
      ,ce_bank_accounts cba
      ,hz_parties hp_bank
      ,hz_parties hp_branch
 WHERE armaa.org_id = houft.organization_id
   AND houft.language = source_lang --USERENV('LANG')
   AND armaa.bank_account_id = cba.bank_account_id
   AND hp_bank.party_id = cba.bank_id
   AND hp_branch.party_id = cba.bank_branch_id