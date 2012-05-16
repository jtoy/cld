#include <stdio.h>
#include <string.h>
#include "encodings/compact_lang_det/compact_lang_det.h"
#include "encodings/compact_lang_det/ext_lang_enc.h"
#include "encodings/compact_lang_det/unittest_data.h"
#include "encodings/proto/encodings.pb.h"

typedef struct {
  const char *name;
  const char *code;
  bool reliable;
} RESULT;

extern "C" {
  RESULT detectLanguageThunkInt(const char * src, bool is_plain_text) {
    bool do_allow_extended_languages = true;
    bool do_pick_summary_language = false;
    bool do_remove_weak_matches = false;
    bool is_reliable;
    Language plus_one = UNKNOWN_LANGUAGE;
    const char* tld_hint = NULL;
    int encoding_hint = UNKNOWN_ENCODING;
    Language language_hint = UNKNOWN_LANGUAGE;

    double normalized_score3[3];
    Language language3[3];
    int percent3[3];
    int text_bytes;

    Language lang;
    lang = CompactLangDet::DetectLanguage(0,
                                          src, strlen(src),
                                          is_plain_text,
                                          do_allow_extended_languages,
                                          do_pick_summary_language,
                                          do_remove_weak_matches,
                                          tld_hint,
                                          encoding_hint,
                                          language_hint,
                                          language3,
                                          percent3,
                                          normalized_score3,
                                          &text_bytes,
                                          &is_reliable);

    RESULT res;
    res.name = LanguageName(lang);
    res.code = ExtLanguageCode(lang);
    res.reliable = is_reliable;
    return res;
  }
}

int main(int argc, char **argv) {
}
