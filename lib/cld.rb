require "cld/version"
require "ffi"

module CLD
  extend FFI::Library

  def self.detect_language(text)
    result = detect_language_ext(text)
    Hash[ result.members.map {|member| [member.to_sym, result[member]]} ]
  end

  private

  class ReturnValue < FFI::Struct
    layout :name, :string, :code, :string, :reliable, :bool
  end

  GEM_ROOT = File.expand_path("../../", __FILE__)
  ffi_lib "#{GEM_ROOT}/ext/cld/cld.so"
  attach_function "detect_language_ext","detectLanguageThunkInt", [:buffer_in], ReturnValue.by_value
end
