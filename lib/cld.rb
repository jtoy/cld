require "rubygems"
require "ffi"

module CLD
  extend FFI::Library
  dir = File.expand_path(File.join(File.dirname(__FILE__), "../ext/cld"))
  ffi_lib "#{dir}/cld.so"
  attach_function "detect_language","detectLanguageThunkInt", [:buffer_in], :int
  def english?(text)
    detect_language(text) == 0
  end
end
