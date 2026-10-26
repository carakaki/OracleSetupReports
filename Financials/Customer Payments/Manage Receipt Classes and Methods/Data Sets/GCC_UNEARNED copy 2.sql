---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: GCC_UNAPPLIED
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT gcc_unapplied.code_combination_id
      ,gcc_unapplied.segment1
      ,gcc_unapplied.segment2
      ,gcc_unapplied.segment3
      ,gcc_unapplied.segment4
      ,gcc_unapplied.segment5
      ,gcc_unapplied.segment6
      ,gcc_unapplied.segment7
      ,gcc_unapplied.segment8
      ,gcc_unapplied.segment9
      ,gcc_unapplied.segment10
      ,gcc_unapplied.concatenated_segments
      ,gcc_unapplied.enabled_flag
  FROM gl_code_combinations gcc_unapplied