--------------------------------------------------------------------------------
-- Report: CAA AR RECEIVABLES PAYMENT TERMS DM
-- Data Model: CAA AR RECEIVABLES PAYMENT TERMS DM
-- Data Set: RA_TERMS_B
--------------------------------------------------------------------------------
select fss.set_code,
       fss.set_name,
       rtl.name term_name,
       rtl.description term_description,
       rtb.partial_discount_flag,
       rtb.prepayment_flag,
       rtb.credit_check_flag,
       rtb.billing_cycle_id,
       rtb.base_amount,
       rtb.calc_discount_on_lines_flag,
       rtb.discount_basis_date_type,
       rtb.start_date_active,
       rtb.end_date_active,
       rtb.printing_lead_days,
       rtb.first_installment_code,
       rtb.attribute_category,
       rtb.attribute1,
       rtb.attribute2
  from ra_terms_b rtb,
       ra_terms_tl rtl,
       fnd_setid_sets fss
 where rtb.term_id = rtl.term_id
   and rtl.language = coalesce(
   userenv('lang'),
   rtl.source_lang
)
   and rtb.set_id = fss.set_id
   and fss.language = coalesce(
   userenv('lang'),
   fss.source_lang
)



%JAVA_HOME%\bin