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

# The data tool, which can be used to read and write CLD2 dynamic data files
g++ -O2 -m64 cld2_dynamic_data_tool.cc \
  cld2_dynamic_data.h cld2_dynamic_data.cc \
  cld2_dynamic_data_extractor.h cld2_dynamic_data_extractor.cc \
  cld2_dynamic_data_loader.h  cld2_dynamic_data_loader.cc \
  cldutil.cc cldutil_shared.cc compact_lang_det.cc  compact_lang_det_hint_code.cc \
  compact_lang_det_impl.cc  debug.cc fixunicodevalue.cc \
  generated_entities.cc  generated_language.cc generated_ulscript.cc  \
  getonescriptspan.cc lang_script.cc offsetmap.cc  scoreonescriptspan.cc \
  tote.cc utf8statetable.cc  \
  cld_generated_cjk_uni_prop_80.cc cld2_generated_cjk_compatible.cc  \
  cld_generated_cjk_delta_bi_4.cc generated_distinct_bi_0.cc  \
  cld2_generated_quadchrome0122_2.cc cld2_generated_deltaoctachrome0122.cc \
  cld2_generated_distinctoctachrome0122.cc  cld_generated_score_quad_octa_0122_2.cc  \
  -o cld2_dynamic_data_tool
echo "  cld2_dynamic_data_tool compiled"

# Tests for Chromium flavored dynamic CLD2
g++ -O2 -m64 -D CLD2_DYNAMIC_MODE compact_lang_det_test.cc \
  cld2_dynamic_data.h cld2_dynamic_data.cc \
  cld2_dynamic_data_extractor.h cld2_dynamic_data_extractor.cc \
  cld2_dynamic_data_loader.h  cld2_dynamic_data_loader.cc \
  cldutil.cc cldutil_shared.cc compact_lang_det.cc  compact_lang_det_hint_code.cc \
  compact_lang_det_impl.cc  debug.cc fixunicodevalue.cc \
  generated_entities.cc  generated_language.cc generated_ulscript.cc  \
  getonescriptspan.cc lang_script.cc offsetmap.cc  scoreonescriptspan.cc \
  tote.cc utf8statetable.cc  \
  -o compact_lang_det_dynamic_test_chrome
echo "  compact_lang_det_dynamic_test_chrome compiled"


# Unit tests, in dynamic mode
g++ -O2 -m64 -g3 -D CLD2_DYNAMIC_MODE cld2_unittest.cc \
  cld2_dynamic_data.h cld2_dynamic_data.cc \
  cld2_dynamic_data_loader.h  cld2_dynamic_data_loader.cc \
  cldutil.cc cldutil_shared.cc compact_lang_det.cc  compact_lang_det_hint_code.cc \
  compact_lang_det_impl.cc  debug.cc fixunicodevalue.cc \
  generated_entities.cc  generated_language.cc generated_ulscript.cc  \
  getonescriptspan.cc lang_script.cc offsetmap.cc  scoreonescriptspan.cc \
  tote.cc utf8statetable.cc  \
  -o cld2_dynamic_unittest
echo "  cld2_dynamic_unittest compiled"

# Shared library, in dynamic mode
g++ -shared -fPIC -O2 -m64 -D CLD2_DYNAMIC_MODE \
  cld2_dynamic_data.h cld2_dynamic_data.cc \
  cld2_dynamic_data_loader.h  cld2_dynamic_data_loader.cc \
  cldutil.cc cldutil_shared.cc compact_lang_det.cc compact_lang_det_hint_code.cc \
  compact_lang_det_impl.cc  debug.cc fixunicodevalue.cc \
  generated_entities.cc  generated_language.cc generated_ulscript.cc  \
  getonescriptspan.cc lang_script.cc offsetmap.cc  scoreonescriptspan.cc \
  tote.cc utf8statetable.cc  \
  -o libcld2_dynamic.so
echo "  libcld2_dynamic.so compiled"

