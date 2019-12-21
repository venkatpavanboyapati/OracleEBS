SELECT ct.ROWID,
  ct.customer_trx_id,
  ct.trx_number,
  ct.old_trx_number,
  ct_rel.trx_number,
  ct.recurred_from_trx_number,
  ct.trx_date,
  arpt_sql_func_util.get_first_real_due_date (ct.customer_trx_id, ct.term_id, ct.trx_date ),
  ct.previous_customer_trx_id,
  ct.initial_customer_trx_id,
  ct.related_batch_source_id,
  ct.related_customer_trx_id,
  ct.cust_trx_type_id,
  ct.batch_id,
  ct.batch_source_id,
  ct.reason_code,
  ct.term_id,
  ct.primary_salesrep_id,
  ct.agreement_id,
  ct.credit_method_for_rules,
  ct.credit_method_for_installments,
  ct.receipt_method_id,
  ct.invoicing_rule_id,
  ct.ship_via,
  ct.fob_point,
  ct.finance_charges,
  ct.complete_flag,
  ct.customer_bank_account_id,
  ct.recurred_from_trx_number,
  ct.status_trx,
  ct.default_tax_exempt_flag,
  ct.sold_to_customer_id,
  ct.sold_to_site_use_id,
  ct.sold_to_contact_id,
  ct.bill_to_customer_id,
  ct.bill_to_site_use_id,
  raa_bill.cust_acct_site_id,
  ct.bill_to_contact_id,
  rac_bill_party.jgzz_fiscal_code,
  ct.ship_to_customer_id,
  ct.ship_to_site_use_id,
  raa_ship.cust_acct_site_id,
  ct.ship_to_contact_id,
  rac_ship_party.jgzz_fiscal_code,
  ct.remit_to_address_id,
  ct.invoice_currency_code,
  ct.created_from,
  ct.set_of_books_id,
  ct.printing_original_date,
  ct.printing_last_printed,
  ct.printing_option,
  ct.printing_count,
  ct.printing_pending,
  ct.last_printed_sequence_num,
  ct.purchase_order,
  ct.purchase_order_revision,
  ct.purchase_order_date,
  ct.customer_reference,
  ct.customer_reference_date,
  ct.comments,
  ct.internal_notes,
  ct.exchange_rate_type,
  ct.exchange_date,
  ct.exchange_rate,
  ct.territory_id,
  ct.end_date_commitment,
  ct.start_date_commitment,
  ct.orig_system_batch_name,
  ct.ship_date_actual,
  ct.waybill_number,
  ct.doc_sequence_id,
  ct.doc_sequence_value,
  ct.paying_customer_id,
  ct.paying_site_use_id,
  ct.attribute_category,
  ct.attribute1,
  ct.attribute2,
  ct.attribute3,
  ct.attribute4,
  ct.attribute5,
  ct.attribute6,
  ct.attribute7,
  ct.attribute8,
  ct.attribute9,
  ct.attribute10,
  ct.attribute11,
  ct.attribute12,
  ct.attribute13,
  ct.attribute14,
  ct.attribute15,
  ct.interface_header_context,
  ct.interface_header_attribute1,
  ct.interface_header_attribute2,
  ct.interface_header_attribute3,
  ct.interface_header_attribute4,
  ct.interface_header_attribute5,
  ct.interface_header_attribute6,
  ct.interface_header_attribute7,
  ct.interface_header_attribute8,
  ct.interface_header_attribute9,
  ct.interface_header_attribute10,
  ct.interface_header_attribute11,
  ct.interface_header_attribute12,
  ct.interface_header_attribute13,
  ct.interface_header_attribute14,
  ct.interface_header_attribute15,
  ct.global_attribute1,
  ct.global_attribute2,
  ct.global_attribute3,
  ct.global_attribute4,
  ct.global_attribute5,
  ct.global_attribute6,
  ct.global_attribute7,
  ct.global_attribute8,
  ct.global_attribute9,
  ct.global_attribute10,
  ct.global_attribute11,
  ct.global_attribute12,
  ct.global_attribute13,
  ct.global_attribute14,
  ct.global_attribute15,
  ct.global_attribute16,
  ct.global_attribute17,
  ct.global_attribute18,
  ct.global_attribute19,
  ct.global_attribute20,
  ct.global_attribute_category,
  ct.default_ussgl_transaction_code,
  ct.last_update_date,
  ct.last_updated_by,
  ct.creation_date,
  ct.created_by,
  ct.last_update_login,
  ct.request_id,
  rac_bill_party.party_name,
  rac_bill.account_number,
  su_bill.LOCATION,
  raa_bill_loc.address1,
  raa_bill_loc.address2,
  raa_bill_loc.address3,
  DECODE (raa_bill.cust_acct_site_id, NULL, NULL, arh_addr_pkg.format_last_address_line (raa_bill_loc.address_style, raa_bill_loc.address3, raa_bill_loc.address4, raa_bill_loc.city, raa_bill_loc.county, raa_bill_loc.state, raa_bill_loc.province, ft_bill.territory_short_name, raa_bill_loc.postal_code ) ),
  raa_bill_loc.city,
  raa_bill_loc.county,
  raa_bill_loc.state,
  raa_bill_loc.province,
  raa_bill_loc.postal_code,
  ft_bill.territory_short_name,
  DECODE (raa_bill.cust_acct_site_id, NULL, NULL, arh_addr_pkg.arxtw_format_address (raa_bill_loc.address_style, raa_bill_loc.address1, raa_bill_loc.address2, raa_bill_loc.address3, raa_bill_loc.address4, raa_bill_loc.city, raa_bill_loc.county, raa_bill_loc.state, raa_bill_loc.province, raa_bill_loc.postal_code, ft_bill.territory_short_name ) ),
  DECODE (SUBSTRB (raco_bill_party.person_last_name, 1, 50), NULL, SUBSTRB (raco_bill_party.person_first_name, 1, 40), SUBSTRB (raco_bill_party.person_last_name, 1, 50)
  || ', '
  || SUBSTRB (raco_bill_party.person_first_name, 1, 40) ),
  rac_ship_party.party_name,
  rac_ship.account_number,
  su_ship.LOCATION,
  raa_ship_loc.address1,
  raa_ship_loc.address2,
  raa_ship_loc.address3,
  DECODE (raa_ship.cust_acct_site_id, NULL, NULL, arh_addr_pkg.format_last_address_line (raa_ship_loc.address_style, raa_ship_loc.address3, raa_ship_loc.address4, raa_ship_loc.city, raa_ship_loc.county, raa_ship_loc.state, raa_ship_loc.province, ft_ship.territory_short_name, raa_ship_loc.postal_code ) ),
  raa_ship_loc.city,
  raa_ship_loc.county,
  raa_ship_loc.state,
  raa_ship_loc.province,
  raa_ship_loc.postal_code,
  ft_ship.territory_short_name,
  DECODE (raa_ship.cust_acct_site_id, NULL, NULL, arh_addr_pkg.arxtw_format_address (raa_ship_loc.address_style, raa_ship_loc.address1, raa_ship_loc.address2, raa_ship_loc.address3, raa_ship_loc.address4, raa_ship_loc.city, raa_ship_loc.county, raa_ship_loc.state, raa_ship_loc.province, raa_ship_loc.postal_code, ft_ship.territory_short_name ) ),
  DECODE (SUBSTRB (raco_ship_party.person_last_name, 1, 50), NULL, SUBSTRB (raco_ship_party.person_first_name, 1, 40), SUBSTRB (raco_ship_party.person_last_name, 1, 50)
  || ', '
  || SUBSTRB (raco_ship_party.person_first_name, 1, 40) ),
  rac_sold_party.party_name,
  rac_sold.account_number,
  rac_paying_party.party_name,
  rac_paying.account_number,
  su_paying.LOCATION,
  raa_remit_loc.address1,
  raa_remit_loc.address2,
  raa_remit_loc.address3,
  DECODE (raa_remit.cust_acct_site_id, NULL, NULL, arh_addr_pkg.format_last_address_line (raa_remit_loc.address_style, raa_remit_loc.address3, raa_remit_loc.address4, raa_remit_loc.city, raa_remit_loc.county, raa_remit_loc.state, raa_remit_loc.province, ft_remit.territory_short_name, raa_remit_loc.postal_code ) ),
  raa_remit_loc.city,
  raa_remit_loc.county,
  raa_remit_loc.state,
  raa_remit_loc.province,
  raa_remit_loc.postal_code,
  ft_remit.territory_short_name,
  DECODE (raa_remit.cust_acct_site_id, NULL, NULL, arh_addr_pkg.arxtw_format_address (raa_remit_loc.address_style, raa_remit_loc.address1, raa_remit_loc.address2, raa_remit_loc.address3, raa_remit_loc.address4, raa_remit_loc.city, raa_remit_loc.county, raa_remit_loc.state, raa_remit_loc.province, raa_remit_loc.postal_code, ft_remit.territory_short_name ) ),
  NULL,
  NULL,
  NULL,
  NULL,
  NULL,
  arm.NAME,
  arm.payment_channel_code,
  arc.creation_method_code,
  bs.NAME,
  bs.auto_trx_numbering_flag,
  bs.copy_doc_number_flag,
  rab.NAME,
  ctt.NAME,
  ctt.TYPE,
  arpt_sql_func_util.get_salesrep_name_number (ct.primary_salesrep_id, 'NAME', ct.org_id ),
  arpt_sql_func_util.get_salesrep_name_number (ct.primary_salesrep_id, 'NUMBER', ct.org_id ),
  rat.NAME,
  rat.in_use,
  soa.NAME,
  orf.description,
  orf.organization_id,
  al_fob.meaning,
  al_tax.meaning,
  ct.ct_reference,
  gd.gl_date,
  gdct.user_conversion_type,
  arpt_sql_func_util.get_cb_invoice (ct.customer_trx_id, ctt.TYPE),
  arpt_sql_func_util.get_dispute_amount (ct.customer_trx_id, ctt.TYPE, ctt.accounting_affect_flag ),
  arpt_sql_func_util.get_dispute_date (ct.customer_trx_id, ctt.TYPE, ctt.accounting_affect_flag ),
  arpt_sql_func_util.get_max_dispute_date (ct.customer_trx_id, ctt.TYPE, ctt.accounting_affect_flag ),
  arpt_sql_func_util.get_revenue_recog_run_flag (ct.customer_trx_id, ct.invoicing_rule_id ),
  arpt_sql_func_util.get_posted_flag (ct.customer_trx_id, ctt.post_to_gl, ct.complete_flag ),
  arpt_sql_func_util.get_selected_for_payment_flag (ct.customer_trx_id, ctt.accounting_affect_flag, ct.complete_flag ),
  arpt_sql_func_util.get_activity_flag (ct.customer_trx_id, ctt.accounting_affect_flag, ct.complete_flag, ctt.TYPE, ct.initial_customer_trx_id, ct.previous_customer_trx_id ),
  ctt.post_to_gl,
  ctt.accounting_affect_flag,
  ctt.allow_freight_flag,
  ctt.creation_sign,
  ctt.allow_overapplication_flag,
  ctt.natural_application_only_flag,
  ctt.tax_calculation_flag,
  ctt.default_status,
  ctt.default_term,
  ctt.default_printing_option,
  DECODE (ct.invoicing_rule_id, NULL, 'N', 'Y'),
  DECODE (ct.printing_last_printed, NULL, 'N', 'Y'),
  DECODE (ct.previous_customer_trx_id, NULL, 'N', 'Y'),
  su_bill.status,
  rac_bill.status,
  arpt_sql_func_util.get_override_terms (ct.bill_to_customer_id, ct.bill_to_site_use_id ),
  DECODE (ct.initial_customer_trx_id, NULL, DECODE (ctt.TYPE, 'DEP', 'N', 'GUAR', 'N', 'CB', 'N', 'Y' ), 'Y' ),
  DECODE (ct.agreement_id, NULL, DECODE (ctt.TYPE, 'CM', 'N', arpt_sql_func_util.get_agreements_exist_flag (ct.bill_to_customer_id, ct.trx_date ) ), 'Y' ),
  fnd_attachment_util_pkg.get_atchmt_exists ('RA_CUSTOMER_TRX', ct.customer_trx_id ),
  ct.global_attribute21,
  ct.global_attribute22,
  ct.global_attribute23,
  ct.global_attribute24,
  ct.global_attribute15,
  ct.global_attribute26,
  ct.global_attribute27,
  ct.global_attribute28,
  ct.global_attribute29,
  ct.global_attribute30,
  bs.batch_source_type,
  ct.org_id,
  NULL,
  ct.legal_entity_id,
  ct.payment_trxn_extension_id,
  arm.payment_channel_code,
  ct.billing_date
  /* R12:ECB */
FROM ra_cust_trx_line_gl_dist_all gd,
  ra_customer_trx_all ct,
  hz_cust_accounts rac_bill,
  hz_parties rac_bill_party,
  hz_cust_accounts rac_ship,
  hz_parties rac_ship_party,
  hz_cust_accounts rac_sold,
  hz_parties rac_sold_party,
  hz_cust_accounts rac_paying,
  hz_parties rac_paying_party,
  hz_cust_site_uses_all su_bill,
  hz_cust_site_uses_all su_ship,
  hz_cust_site_uses_all su_paying,
  fnd_territories_vl ft_bill,
  fnd_territories_vl ft_ship,
  fnd_territories_vl ft_remit,
  hz_cust_acct_sites raa_bill,
  hz_party_sites raa_bill_ps,
  hz_locations raa_bill_loc,
  hz_cust_acct_sites raa_ship,
  hz_party_sites raa_ship_ps,
  hz_locations raa_ship_loc,
  hz_cust_acct_sites raa_remit,
  hz_party_sites raa_remit_ps,
  hz_locations raa_remit_loc,
  hz_cust_account_roles raco_ship,
  hz_parties raco_ship_party,
  hz_relationships raco_ship_rel,
  hz_cust_account_roles raco_bill,
  hz_parties raco_bill_party,
  hz_relationships raco_bill_rel,
  ar_receipt_methods arm,
  ar_receipt_classes arc,
  ra_batch_sources_all bs,
  ra_batches_all rab,
  ra_cust_trx_types_all ctt,
  ra_terms rat,
  so_agreements soa,
  org_freight orf,
  gl_daily_conversion_types gdct,
  ra_customer_trx_all ct_rel,
  ar_lookups al_fob,
  ar_lookups al_tax
WHERE ct.customer_trx_id                = gd.customer_trx_id
AND 'REC'                               = gd.account_class
AND 'Y'                                 = gd.latest_rec_flag
AND ct.related_customer_trx_id          = ct_rel.customer_trx_id(+)
AND ct.bill_to_customer_id              = rac_bill.cust_account_id
AND rac_bill.party_id                   = rac_bill_party.party_id
AND ct.ship_to_customer_id              = rac_ship.cust_account_id(+)
AND rac_ship.party_id                   = rac_ship_party.party_id(+)
AND ct.sold_to_customer_id              = rac_sold.cust_account_id(+)
AND rac_sold.party_id                   = rac_sold_party.party_id(+)
AND ct.paying_customer_id               = rac_paying.cust_account_id(+)
AND rac_paying.party_id                 = rac_paying_party.party_id(+)
AND ct.bill_to_site_use_id              = su_bill.site_use_id
AND ct.ship_to_site_use_id              = su_ship.site_use_id(+)
AND ct.paying_site_use_id               = su_paying.site_use_id(+)
AND su_bill.cust_acct_site_id           = raa_bill.cust_acct_site_id
AND raa_bill.party_site_id              = raa_bill_ps.party_site_id
AND raa_bill_loc.location_id            = raa_bill_ps.location_id
AND su_ship.cust_acct_site_id           = raa_ship.cust_acct_site_id(+)
AND raa_ship.party_site_id              = raa_ship_ps.party_site_id(+)
AND raa_ship_loc.location_id(+)         = raa_ship_ps.location_id
AND ct.bill_to_contact_id               = raco_bill.cust_account_role_id(+)
AND raco_bill.party_id                  = raco_bill_rel.party_id(+)
AND raco_bill_rel.subject_table_name(+) = 'HZ_PARTIES'
AND raco_bill_rel.object_table_name(+)  = 'HZ_PARTIES'
AND raco_bill_rel.directional_flag(+)   = 'F'
AND raco_bill.role_type(+)              = 'CONTACT'
AND raco_bill_rel.subject_id            = raco_bill_party.party_id(+)
AND ct.ship_to_contact_id               = raco_ship.cust_account_role_id(+)
AND raco_ship.party_id                  = raco_ship_rel.party_id(+)
AND raco_ship_rel.subject_table_name(+) = 'HZ_PARTIES'
AND raco_ship_rel.object_table_name(+)  = 'HZ_PARTIES'
AND raco_ship_rel.directional_flag(+)   = 'F'
AND raco_ship.role_type(+)              = 'CONTACT'
AND raco_ship_rel.subject_id            = raco_ship_party.party_id(+)
AND ct.remit_to_address_id              = raa_remit.cust_acct_site_id(+)
AND raa_remit.party_site_id             = raa_remit_ps.party_site_id(+)
AND raa_remit_loc.location_id(+)        = raa_remit_ps.location_id
AND raa_bill_loc.country                = ft_bill.territory_code(+)
AND raa_ship_loc.country                = ft_ship.territory_code(+)
AND raa_remit_loc.country               = ft_remit.territory_code(+)
AND ct.receipt_method_id                = arm.receipt_method_id(+)
AND arm.receipt_class_id                = arc.receipt_class_id(+)
AND ct.batch_source_id                  = bs.batch_source_id
AND ct.batch_id                         = rab.batch_id(+)
AND ct.cust_trx_type_id                 = ctt.cust_trx_type_id
AND ctt.TYPE                           <> 'BR'
AND ct.term_id                          = rat.term_id(+)
AND ct.agreement_id                     = soa.agreement_id(+)
AND ct.exchange_rate_type               = gdct.conversion_type(+)
AND 'FOB'                               = al_fob.lookup_type(+)
AND ct.fob_point                        = al_fob.lookup_code(+)
AND ct.ship_via                         = orf.freight_code(+)
AND ct.org_id                           = orf.organization_id(+)
AND 'TAX_CONTROL_FLAG'                  = al_tax.lookup_type(+)
AND ct.default_tax_exempt_flag          = al_tax.lookup_code(+)
AND ctt.org_id                          = ct.org_id
AND bs.org_id                           = ct.org_id;