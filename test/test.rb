# Copyright (c) 2009 The Chromium Authors. All rights reserved.
# Use of this source code is governed by a BSD-style license that can be
# found in the LICENSE file.

require "test/unit"
require "ccld"

VERBOSE = False

# MKM: ported from FullTests in compact_lang_det_unittest_small.cc

class TestCLD(unittest.TestCase):

  langsSeen = set()

  def runOne(self, expectedLangName, s):
    if VERBOSE:
      print
      print 'Test: %s [%d bytes]' % (expectedLangName, len(s))
    detectedLangName, detectedLangCode, isReliable, textBytesFound, details = cld.detect(s, pickSummaryLanguage=True)
    if VERBOSE:
      print '  detected: %s' % detectedLangName
      print '  reliable: %s' % (isReliable != 0)
      print '  textBytes: %s' % textBytesFound
      print '  details: %s' % str(details)
      self.langsSeen.add(expectedLangName)
      print '  %d langs' % len(self.langsSeen)
    self.assertEquals(expectedLangName, detectedLangName)
    self.assertTrue(isReliable)

  def testAFRIKAANS(self):
    self.runOne('AFRIKAANS', kTeststr_af_Latn)
  
  # def testAFAR(self):
  #   self.runOne('AFAR', kTeststr_aa_Latn)
  
  # def testABKHAZIAN(self):
  #   self.runOne('ABKHAZIAN', kTeststr_ab_Cyrl)
  
  def testAFRIKAANS(self):
    self.runOne('AFRIKAANS', kTeststr_af_Latn)
    
  # def testAMHARIC(self):
  #   self.runOne('AMHARIC', kTeststr_am_Ethi)
  
  def testARABIC(self):
    self.runOne('ARABIC', kTeststr_ar_Arab)
    
  # def testASSAMESE(self):
  #   self.runOne('ASSAMESE', kTeststr_as_Beng)
  
  # def testAYMARA(self):
  #   self.runOne('AYMARA', kTeststr_ay_Latn)
  
  # AZERBAIJANI Arab & Cyrl removed 2008.05.27. Just AZERBAIJANI Latn left
  # def testAZERBAIJANI(self):
  #   self.runOne('AZERBAIJANI', kTeststr_az_Arab)
  
  # Missing data: az-Cyrl
  # def testAZERBAIJANI(self):
  #   self.runOne('AZERBAIJANI', kTeststr_az_Latn)
  
  # def testBASHKIR(self):
  #   self.runOne('BASHKIR', kTeststr_ba_Cyrl)
  
  def testBELARUSIAN(self):
    self.runOne('BELARUSIAN', kTeststr_be_Cyrl)
    
  def testBULGARIAN(self):
    self.runOne('BULGARIAN', kTeststr_bg_Cyrl)
    
  # def testBIHARI(self):
  #   self.runOne('BIHARI', kTeststr_bh_Deva)
  
  # def testBISLAMA(self):
  #   self.runOne('BISLAMA', kTeststr_bi_Latn)
  
  # def testBENGALI(self):
  #   self.runOne('BENGALI', kTeststr_bn_Beng)
  
  # def testTIBETAN(self):
  #   self.runOne('TIBETAN', kTeststr_bo_Tibt)
  
  # def testBRETON(self):
  #   self.runOne('BRETON', kTeststr_br_Latn)
  
  def testSERBIAN(self):
    self.runOne('SERBIAN', kTeststr_bs_Cyrl)    # NOTE: Not BOSNIAN
    
  # def testCROATIAN(self):
  #   self.runOne('CROATIAN', kTeststr_bs_Latn)   # NOTE: Not BOSNIAN
  
  def testCATALAN(self):
    self.runOne('CATALAN', kTeststr_ca_Latn)
    
  def testCHEROKEE(self):
    self.runOne('CHEROKEE', kTeststr_chr_Cher)
    
  # def testCORSICAN(self):
  #   self.runOne('CORSICAN', kTeststr_co_Latn)
  
  # No CREOLES_AND_PIDGINS_ENGLISH_BASED
  # No CREOLES_AND_PIDGINS_FRENCH_BASED
  # No CREOLES_AND_PIDGINS_OTHER
  # No CREOLES_AND_PIDGINS_PORTUGUESE_BASED
  def testCZECH(self):
    self.runOne('CZECH', kTeststr_cs_Latn)
    
  def testWELSH(self):
    self.runOne('WELSH', kTeststr_cy_Latn)

  def testDANISH(self):
    self.runOne('DANISH', kTeststr_da_Latn)
    
  def testGERMAN(self):
    self.runOne('GERMAN', kTeststr_de_Latn)
    
  def testDHIVEHI(self):
    self.runOne('DHIVEHI', kTeststr_dv_Thaa)
    
  # def testDZONGKHA(self):
  #   self.runOne('DZONGKHA', kTeststr_dz_Tibt)

  def testGREEK(self):
    self.runOne('GREEK', kTeststr_el_Grek)
    
  def testENGLISH(self):
    self.runOne('ENGLISH', kTeststr_en_Latn)
    
  def testENGLISH(self):
    self.runOne('ENGLISH', kTeststr_en)

  # def testESPERANTO(self):
  #   self.runOne('ESPERANTO', kTeststr_eo_Latn)
  
  def testSPANISH(self):
    self.runOne('SPANISH', kTeststr_es_Latn)
    
  def testESTONIAN(self):
    self.runOne('ESTONIAN', kTeststr_et_Latn)
    
  # def testBASQUE(self):
  #   self.runOne('BASQUE', kTeststr_eu_Latn)

  def testPERSIAN(self):
    self.runOne('PERSIAN', kTeststr_fa_Arab)
    
  def testFINNISH(self):
    self.runOne('FINNISH', kTeststr_fi_Latn)
    
  # def testFIJIAN(self):
  #   self.runOne('FIJIAN', kTeststr_fj_Latn)
  
  # def testFAROESE(self):
  #   self.runOne('FAROESE', kTeststr_fo_Latn)
  
  def testFRENCH(self):
    self.runOne('FRENCH', kTeststr_fr_Latn)
    
  # def testFRISIAN(self):
  #   self.runOne('FRISIAN', kTeststr_fy_Latn)

  def testIRISH(self):
    self.runOne('IRISH', kTeststr_ga_Latn)
    
  # def testSCOTS_GAELIC(self):
  #   self.runOne('SCOTS_GAELIC', kTeststr_gd_Latn)
  
  # def testGALICIAN(self):
  #   self.runOne('GALICIAN', kTeststr_gl_Latn)
  
  # def testGUARANI(self):
  #   self.runOne('GUARANI', kTeststr_gn_Latn)
  
  def testGUJARATI(self):
    self.runOne('GUJARATI', kTeststr_gu_Gujr)
    
  # def testMANX(self):
  #   self.runOne('MANX', kTeststr_gv_Latn)

  # def testHAUSA(self):
  #   self.runOne('HAUSA', kTeststr_ha_Latn)
  
  def testHINDI(self):
    self.runOne('HINDI', kTeststr_hi_Deva)
    
  def testHINDI2(self):
    self.runOne('HINDI', kTeststr_ks)
    
  def testCROATIAN(self):
    self.runOne('CROATIAN', kTeststr_hr_Latn)     # NOTE: now CROATIAN
    
  # def testHAITIAN_CREOLE(self):
  #   self.runOne('HAITIAN_CREOLE', kTeststr_ht_Latn)
  
  def testHUNGARIAN(self):
    self.runOne('HUNGARIAN', kTeststr_hu_Latn)
    
  def testARMENIAN(self):
    self.runOne('ARMENIAN', kTeststr_hy_Armn)

  # def testINTERLINGUA(self):
  #   self.runOne('INTERLINGUA', kTeststr_ia_Latn)
  
  def testMALAY(self):
    self.runOne('MALAY', kTeststr_id_Latn)
    
  # def testINTERLINGUE(self):
  #   self.runOne('INTERLINGUE', kTeststr_ie_Latn)
  
  # def testINUPIAK(self):
  #   self.runOne('INUPIAK', kTeststr_ik_Latn)
  
  def testICELANDIC(self):
    self.runOne('ICELANDIC', kTeststr_is_Latn)
    
  def testITALIAN(self):
    self.runOne('ITALIAN', kTeststr_it_Latn)
    
  def testINUKTITUT(self):
    self.runOne('INUKTITUT', kTeststr_iu_Cans)
    
  def testHEBREW(self):
    self.runOne('HEBREW', kTeststr_iw_Hebr)

  def testJAPANESE(self):
    self.runOne('Japanese', kTeststr_ja_Hani)
    
  # def testJAVANESE(self):
  #   self.runOne('JAVANESE', kTeststr_jw_Latn)

  def testGEORGIAN(self):
    self.runOne('GEORGIAN', kTeststr_ka_Geor)
    
  # def testKHASI(self):
  #   self.runOne('KHASI', kTeststr_kha_Latn)
  
  # def testKAZAKH(self):
  #   self.runOne('KAZAKH', kTeststr_kk_Arab)
  
  # def testKAZAKH(self):
  #   self.runOne('KAZAKH', kTeststr_kk_Cyrl)
  
  # def testKAZAKH(self):
  #   self.runOne('KAZAKH', kTeststr_kk_Latn)
  
  # def testGREENLANDIC(self):
  #   self.runOne('GREENLANDIC', kTeststr_kl_Latn)
  
  def testKHMER(self):
    self.runOne('KHMER', kTeststr_km_Khmr)
    
  def testKANNADA(self):
    self.runOne('KANNADA', kTeststr_kn_Knda)
    
  def testKOREAN(self):
    self.runOne('Korean', kTeststr_ko_Hani)
    
  # def testKASHMIRI(self):
  #   self.runOne('KASHMIRI', kTeststr_ks_Deva)
  
  # KURDISH Latn removed 2008.05.27. Just KURDISH Arab left
  # def testKURDISH(self):
  #   self.runOne('KURDISH', kTeststr_ku_Arab)
  
  # def testKURDISH(self):
  #   self.runOne('KURDISH', kTeststr_ku_Latn)
  
  # def testKYRGYZ(self):
  #   self.runOne('KYRGYZ', kTeststr_ky_Arab)
  
  # def testKYRGYZ(self):
  #   self.runOne('KYRGYZ', kTeststr_ky_Cyrl)
  

  # def testLATIN(self):
  #   self.runOne('LATIN', kTeststr_la_Latn)
  
  # def testLUXEMBOURGISH(self):
  #   self.runOne('LUXEMBOURGISH', kTeststr_lb_Latn)
  
  # def testGANDA(self):
  #   self.runOne('GANDA', kTeststr_lg_Latn)
  
  # def testLINGALA(self):
  #   self.runOne('LINGALA', kTeststr_ln_Latn)
  
  def testLAOTHIAN(self):
    self.runOne('LAOTHIAN', kTeststr_lo_Laoo)
    
  def testLITHUANIAN(self):
    self.runOne('LITHUANIAN', kTeststr_lt_Latn)
    
  def testLATVIAN(self):
    self.runOne('LATVIAN', kTeststr_lv_Latn)
    
  # def testMALAGASY(self):
  #   self.runOne('MALAGASY', kTeststr_mg_Latn)
  
  # def testMAORI(self):
  #   self.runOne('MAORI', kTeststr_mi_Latn)
  
  def testMACEDONIAN(self):
    self.runOne('MACEDONIAN', kTeststr_mk_Cyrl)
    
  def testMALAYALAM(self):
    self.runOne('MALAYALAM', kTeststr_ml_Mlym)
    
  # def testMONGOLIAN(self):
  #   self.runOne('MONGOLIAN', kTeststr_mn_Cyrl)
  
  # def testMOLDAVIAN(self):
  #   self.runOne('MOLDAVIAN', kTeststr_mo_Cyrl)
  
  # def testMARATHI(self):
  #   self.runOne('MARATHI', kTeststr_mr_Deva)
  
  def testMALAY(self):
    self.runOne('MALAY', kTeststr_ms_Latn)
    
  # def testMALAY(self):
  #   self.runOne('MALAY', kTeststr_ms_Latn2)
  
  def testMALAY(self):
    self.runOne('MALAY', kTeststr_ms_Latn3)
    
  # def testMALTESE(self):
  #   self.runOne('MALTESE', kTeststr_mt_Latn)
  
  # def testBURMESE(self):
  #   self.runOne('BURMESE', kTeststr_my_Latn)
  
  # def testBURMESE(self):
  #   self.runOne('BURMESE', kTeststr_my_Mymr)

  # def testNAURU(self):
  #   self.runOne('NAURU', kTeststr_na_Latn)
  
  # def testNEPALI(self):
  #   self.runOne('NEPALI', kTeststr_ne_Deva)
  
  def testDUTCH(self):
    self.runOne('DUTCH', kTeststr_nl_Latn)
    
  # def testNORWEGIAN_N(self):
  #   self.runOne('NORWEGIAN_N', kTeststr_nn_Latn)
  
  def testNORWEGIAN(self):
    self.runOne('NORWEGIAN', kTeststr_no_Latn)
    

  # def testOCCITAN(self):
  #   self.runOne('OCCITAN', kTeststr_oc_Latn)
  
  # def testOROMO(self):
  #   self.runOne('OROMO', kTeststr_om_Latn)
  
  def testORIYA(self):
    self.runOne('ORIYA', kTeststr_or_Orya)
    
  def testPUNJABI(self):
    self.runOne('PUNJABI', kTeststr_pa_Guru)
    
  def testPOLISH(self):
    self.runOne('POLISH', kTeststr_pl_Latn)
    
  # def testPASHTO(self):
  #   self.runOne('PASHTO', kTeststr_ps_Arab)
  
  def testPORTUGUESE(self):
    self.runOne('PORTUGUESE', kTeststr_pt_BR)     # NOTE: not PORTUGUESE_B
                                                  # nor PORTUGUESE_P

  # def testQUECHUA(self):
  #   self.runOne('QUECHUA', kTeststr_qu_Latn)
  
  # def testRHAETO_ROMANCE(self):
  #   self.runOne('RHAETO_ROMANCE', kTeststr_rm_Latn)
  
  # def testRUNDI(self):
  #   self.runOne('RUNDI', kTeststr_rn_Latn)
  
  def testROMANIAN(self):
    self.runOne('ROMANIAN', kTeststr_ro_Latn)
    
  def testRUSSIAN(self):
    self.runOne('RUSSIAN', kTeststr_ru_Cyrl)
    
  # def testKINYARWANDA(self):
  #   self.runOne('KINYARWANDA', kTeststr_rw_Latn)

  # def testSANSKRIT(self):
  #   self.runOne('SANSKRIT', kTeststr_sa_Deva)
  
  # def testSANSKRIT(self):
  #   self.runOne('SANSKRIT', kTeststr_sa_Latn)
  
  # def testSCOTS(self):
  #   self.runOne('SCOTS', kTeststr_sco_Latn)
  
  # def testSINDHI(self):
  #   self.runOne('SINDHI', kTeststr_sd_Arab)
  
  # def testSANGO(self):
  #   self.runOne('SANGO', kTeststr_sg_Latn)
  
  # No SERBO_CROATIAN (sh)
  def testSINHALESE(self):
    self.runOne('SINHALESE', kTeststr_si_Sinh)
    
  # def testLIMBU(self):
  #   self.runOne('LIMBU', kTeststr_sit_NP)
  
  def testSLOVAK(self):
    self.runOne('SLOVAK', kTeststr_sk_Latn)
    
  def testSLOVENIAN(self):
    self.runOne('SLOVENIAN', kTeststr_sl_Latn)
    
  # def testSAMOAN(self):
  #   self.runOne('SAMOAN', kTeststr_sm_Latn)
  
  # def testSHONA(self):
  #   self.runOne('SHONA', kTeststr_sn_Latn)
  
  # def testSOMALI(self):
  #   self.runOne('SOMALI', kTeststr_so_Latn)
  
  # def testALBANIAN(self):
  #   self.runOne('ALBANIAN', kTeststr_sq_Latn)
  
  def testSERBIAN(self):
    self.runOne('SERBIAN', kTeststr_sr_Cyrl)    # NOTE: now SERBIAN
    
  def testCROATIAN(self):
    self.runOne('CROATIAN', kTeststr_sr_Latn)   # NOTE: Not SERBIAN
    
  def testCROATIAN(self):
    self.runOne('CROATIAN', kTeststr_sr_ME_Latn)  # NOTE: not SERBIAN nor MONTENEGRIN
    
  # def testSISWANT(self):
  #   self.runOne('SISWANT', kTeststr_ss_Latn)
  
  # def testSESOTHO(self):
  #   self.runOne('SESOTHO', kTeststr_st_Latn)
  
  # def testSUNDANESE(self):
  #   self.runOne('SUNDANESE', kTeststr_su_Latn)
  
  def testSWEDISH(self):
    self.runOne('SWEDISH', kTeststr_sv_Latn)
    
  def testSWAHILI(self):
    self.runOne('SWAHILI', kTeststr_sw_Latn)
    
  def testSYRIAC(self):
    self.runOne('SYRIAC', kTeststr_syr_Syrc)
    
  def testTAMIL(self):
    self.runOne('TAMIL', kTeststr_ta_Taml)
    
  def testTELUGU(self):
    self.runOne('TELUGU', kTeststr_te_Telu)
    
  # Tajik Arab removed 2008.05.27. Just Tajik Cyrl left
  # def testTAJIK(self):
  #   self.runOne('TAJIK', kTeststr_tg_Arab)
  
  # def testTAJIK(self):
  #   self.runOne('TAJIK', kTeststr_tg_Cyrl)
  
  def testTHAI(self):
    self.runOne('THAI', kTeststr_th_Thai)
    
  # def testTIGRINYA(self):
  #   self.runOne('TIGRINYA', kTeststr_ti_Ethi)
  
  # def testTURKMEN(self):
  #   self.runOne('TURKMEN', kTeststr_tk_Cyrl)
  
  # def testTURKMEN(self):
  #   self.runOne('TURKMEN', kTeststr_tk_Latn)
  
  def testTAGALOG(self):
    self.runOne('TAGALOG', kTeststr_tl_Latn)
    
  # def testTSWANA(self):
  #   self.runOne('TSWANA', kTeststr_tn_Latn)
  
  # def testTONGA(self):
  #   self.runOne('TONGA', kTeststr_to_Latn)
  
  def testTURKISH(self):
    self.runOne('TURKISH', kTeststr_tr_Latn)
    
  # def testTSONGA(self):
  #   self.runOne('TSONGA', kTeststr_ts_Latn)
  
  # def testTATAR(self):
  #   self.runOne('TATAR', kTeststr_tt_Cyrl)
  
  # def testTATAR(self):
  #   self.runOne('TATAR', kTeststr_tt_Latn)
  
  # def testTWI(self):
  #   self.runOne('TWI', kTeststr_tw_Latn)
  
  # def testUIGHUR(self):
  #   self.runOne('UIGHUR', kTeststr_ug_Arab)
  
  # def testUIGHUR(self):
  #   self.runOne('UIGHUR', kTeststr_ug_Cyrl)
  
  # def testUIGHUR(self):
  #   self.runOne('UIGHUR', kTeststr_ug_Latn)
  
  def testUKRAINIAN(self):
    self.runOne('UKRAINIAN', kTeststr_uk_Cyrl)
    
  # def testURDU(self):
  #   self.runOne('URDU', kTeststr_ur_Arab)
  
  # def testUZBEK(self):
  #   self.runOne('UZBEK', kTeststr_uz_Arab)
  
  # def testUZBEK(self):
  #   self.runOne('UZBEK', kTeststr_uz_Cyrl)
  
  # def testUZBEK(self):
  #   self.runOne('UZBEK', kTeststr_uz_Latn)
  
  def testVIETNAMESE(self):
    self.runOne('VIETNAMESE', kTeststr_vi_Latn)
    
  # def testVOLAPUK(self):
  #   self.runOne('VOLAPUK', kTeststr_vo_Latn)
  
  # def testWOLOF(self):
  #   self.runOne('WOLOF', kTeststr_wo_Latn)

  # def testXHOSA(self):
  #   self.runOne('XHOSA', kTeststr_xh_Latn)
  
  def testYIDDISH(self):
    self.runOne('YIDDISH', kTeststr_yi_Hebr)
    
  # def testYORUBA(self):
  #   self.runOne('YORUBA', kTeststr_yo_Latn)

  # Zhuang Hani removed 2008.05.13. Just Zhuang Latn left
  # def testZHUANG(self):
  #   self.runOne('ZHUANG', kTeststr_za_Hani)
  
  # def testZHUANG(self):
  #   self.runOne('ZHUANG', kTeststr_za_Latn)
  
  def testCHINESE(self):
    self.runOne('Chinese', kTeststr_zh_Hani)
    
  def testCHINESE_T(self):
    self.runOne('ChineseT', kTeststr_zh_TW)
    
  # def testZULU(self):
  #   self.runOne('ZULU', kTeststr_zu_Latn)
  
  # No TG_UNKNOWN_LANGUAGE
  # No UNKNOWN_LANGUAGE

if __name__ == '__main__':
  unittest.main()
