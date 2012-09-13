# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ua/property_created_at_outofrange.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ua.rb'

describe Whois::Record::Parser::WhoisUa, "property_created_at_outofrange.expected" do

  subject do
    file = fixture("responses", "whois.ua/property_created_at_outofrange.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#created_on" do
    it do
      subject.created_on.should == nil
    end
  end
end
