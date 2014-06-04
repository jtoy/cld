#include <stdio.h>
#include <string.h>
#include "public/compact_lang_det.h"
#include "public/encodings.h"

using namespace CLD2;

typedef struct {
  const char *name;
  const char *code;
  bool reliable;
} RESULT;

extern "C" {
  RESULT detectLanguageThunkInt(const char * src, bool is_plain_text) {
    bool is_reliable;
    Language language3[3];
    int percent3[3];
    int text_bytes;

    Language lang;
    lang = ExtDetectLanguageSummary(
        src, strlen(src),
        is_plain_text,
        language3,
        percent3,
        &text_bytes,
        &is_reliable);

    RESULT res;
    res.name = LanguageName(lang);
    res.code = LanguageCode(lang);
    res.reliable = is_reliable;
    return res;
  }
}
