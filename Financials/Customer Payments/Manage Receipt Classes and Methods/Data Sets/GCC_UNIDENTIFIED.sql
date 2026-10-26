---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: GCC_UNIDENTIFIED
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT gcc_unidentified.code_combination_id
      ,gcc_unidentified.segment1
      ,gcc_unidentified.segment2
      ,gcc_unidentified.segment3
      ,gcc_unidentified.segment4
      ,gcc_unidentified.segment5
      ,gcc_unidentified.segment6
      ,gcc_unidentified.segment7
      ,gcc_unidentified.segment8
      ,gcc_unidentified.segment9
      ,gcc_unidentified.segment10
      ,gcc_unidentified.concatenated_segments
      ,gcc_unidentified.enabled_flag
  FROM gl_code_combinations gcc_unidentified