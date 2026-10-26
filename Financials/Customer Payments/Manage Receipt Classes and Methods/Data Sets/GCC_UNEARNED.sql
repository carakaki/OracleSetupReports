---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: GCC_UNEARNED
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT gcc_unearned.code_combination_id
      ,gcc_unearned.segment1
      ,gcc_unearned.segment2
      ,gcc_unearned.segment3
      ,gcc_unearned.segment4
      ,gcc_unearned.segment5
      ,gcc_unearned.segment6
      ,gcc_unearned.segment7
      ,gcc_unearned.segment8
      ,gcc_unearned.segment9
      ,gcc_unearned.segment10
      ,gcc_unearned.concatenated_segments
      ,gcc_unearned.enabled_flag
  FROM gl_code_combinations gcc_unearned