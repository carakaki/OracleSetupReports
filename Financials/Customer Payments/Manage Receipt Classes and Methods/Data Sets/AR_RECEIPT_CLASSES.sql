---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: AR_RECEIPT_CLASSES
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT arc.receipt_class_id
      ,arc.name
      ,arc.creation_method_code
      ,arc.remit_method_code
      ,arc.clear_flag
      ,arc.confirm_flag
  FROM ar_receipt_classes arc
 WHERE arc.receipt_class_id IN ( :preceiptclassid )