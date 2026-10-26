---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- Data Set: AR_RECEIPT_METHODS
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT arm.receipt_class_id
      ,arm.receipt_method_id
      ,arm.name
      ,arm.printed_name
      ,arm.start_date
      ,arm.end_date
      ,arm.dm_inherit_receipt_num_flag
      ,arm.attribute_category
      ,arm.attribute1
      ,arm.attribute2
      ,arm.attribute3
      ,arm.attribute4
  FROM ar_receipt_methods arm
 WHERE arm.receipt_class_id IN ( :preceiptclassid )