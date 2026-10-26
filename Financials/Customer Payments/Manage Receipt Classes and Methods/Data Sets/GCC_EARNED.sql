---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: GCC_EARNED
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT gcc_earned.code_combination_id
      ,gcc_earned.segment1
      ,gcc_earned.segment2
      ,gcc_earned.segment3
      ,gcc_earned.segment4
      ,gcc_earned.segment5
      ,gcc_earned.segment6
      ,gcc_earned.segment7
      ,gcc_earned.segment8
      ,gcc_earned.segment9
      ,gcc_earned.segment10
      ,gcc_earned.concatenated_segments
      ,gcc_earned.enabled_flag
  FROM gl_code_combinations gcc_earned