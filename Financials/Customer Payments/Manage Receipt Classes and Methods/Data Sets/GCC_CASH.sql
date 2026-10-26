---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: GCC_CASH
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT gcc_cash.code_combination_id
      ,gcc_cash.segment1
      ,gcc_cash.segment2
      ,gcc_cash.segment3
      ,gcc_cash.segment4
      ,gcc_cash.segment5
      ,gcc_cash.segment6
      ,gcc_cash.segment7
      ,gcc_cash.segment8
      ,gcc_cash.segment9
      ,gcc_cash.segment10
      ,gcc_cash.concatenated_segments
      ,gcc_cash.enabled_flag
  FROM gl_code_combinations gcc_cash