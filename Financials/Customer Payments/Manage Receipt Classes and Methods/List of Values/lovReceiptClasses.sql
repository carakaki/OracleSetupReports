---------------------------------------------------------------------
-- Report: CAA AR RECEIPT CLASSES AND METHODS SETUP
-- Data Model: CAA AR RECEIPT CLASSES AND METHODS SETUP DM
-- List of values: lovReceiptClasses
-- Parámetro asociado: pReceiptClassId
---------------------------------------------------------------------
-- Creación del reporte - Cristian A. Arakaki - 2026-07-02
---------------------------------------------------------------------
SELECT 
ARC.NAME, ARC.RECEIPT_CLASS_ID
FROM AR_RECEIPT_CLASSES ARC

