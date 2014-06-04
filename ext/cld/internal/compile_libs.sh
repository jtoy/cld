#!/bin/sh
#
#  Copyright 2013 Google Inc. All Rights Reserved.
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http:# www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.

g++ -shared -fPIC -O2 -m64 \
  cldutil.cc cldutil_shared.cc compact_lang_det.cc compact_lang_det_hint_code.cc \
  compact_lang_det_impl.cc  debug.cc fixunicodevalue.cc \
  generated_entities.cc  generated_language.cc generated_ulscript.cc  \
  getonescriptspan.cc lang_script.cc offsetmap.cc  scoreonescriptspan.cc \
  tote.cc utf8statetable.cc  \
  cld_generated_cjk_uni_prop_80.cc cld2_generated_cjk_compatible.cc  \
  cld_generated_cjk_delta_bi_4.cc generated_distinct_bi_0.cc  \
  cld2_generated_quadchrome0122_2.cc cld2_generated_deltaoctachrome0122.cc \
  cld2_generated_distinctoctachrome0122.cc  cld_generated_score_quad_octa_0122_2.cc  \
  -o libcld2.so

g++ -shared -fPIC -O2 -m64 \
  cldutil.cc cldutil_shared.cc compact_lang_det.cc compact_lang_det_hint_code.cc \
  compact_lang_det_impl.cc  debug.cc fixunicodevalue.cc \
  generated_entities.cc  generated_language.cc generated_ulscript.cc  \
  getonescriptspan.cc lang_script.cc offsetmap.cc  scoreonescriptspan.cc \
  tote.cc utf8statetable.cc  \
  cld_generated_cjk_uni_prop_80.cc cld2_generated_cjk_compatible.cc  \
  cld_generated_cjk_delta_bi_32.cc generated_distinct_bi_0.cc  \
  cld2_generated_quad0122.cc cld2_generated_deltaocta0122.cc \
  cld2_generated_distinctocta0122.cc  cld_generated_score_quad_octa_0122.cc  \
  -o libcld2_full.so

