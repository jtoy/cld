# encoding: UTF-8
require "spec_helper"

describe CLD do

  context "English text" do
    subject { CLD.detect_language("This is a test") }

    it { subject[:name].should eq("ENGLISH") }
    it { subject[:code].should eq("en") }
    it { subject[:reliable].should be_true }
  end

  context "French text" do
    subject { CLD.detect_language("plus ça change, plus c'est la même chose") }

    it { subject[:name].should eq("FRENCH") } 
    it { subject[:code].should eq("fr") }
    it { subject[:reliable].should be_true }
  end
  
  context "Simplified Chinese text" do
    subject { CLD.detect_language("你好吗箭体") }

    it { subject[:name].should eq("Chinese") } 
    it { subject[:code].should eq("zh") }
  end
  
  context "Traditional Chinese text" do
    subject { CLD.detect_language("你好嗎繁體") }

    it { subject[:name].should eq("ChineseT") } 
    it { subject[:code].should eq("zh-TW") }
  end

  context "Unknown text" do
    subject { CLD.detect_language("") }

    it { subject[:name].should eq("Unknown") }
    it { subject[:code].should eq("un") }
    it { subject[:reliable].should be_true }
  end

end
