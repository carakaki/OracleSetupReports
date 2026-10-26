---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: GCC_ON_ACCOUNT
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT gcc_on_account.code_combination_id
      ,gcc_on_account.segment1
      ,gcc_on_account.segment2
      ,gcc_on_account.segment3
      ,gcc_on_account.segment4
      ,gcc_on_account.segment5
      ,gcc_on_account.segment6
      ,gcc_on_account.segment7
      ,gcc_on_account.segment8
      ,gcc_on_account.segment9
      ,gcc_on_account.segment10
      ,gcc_on_account.concatenated_segments
      ,gcc_on_account.enabled_flag
  FROM gl_code_combinations gcc_on_account