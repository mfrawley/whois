# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.cmc.iq/status_available.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.cmc.iq.rb'

describe Whois::Record::Parser::WhoisCmcIq, "status_available.expected" do

  subject do
    file = fixture("responses", "whois.cmc.iq/status_available.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      subject.domain.should == "u34jedzcq.iq"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :available
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == true
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == false
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should == nil
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should == nil
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should == nil
    end
  end
  describe "#nameservers" do
    it do
      lambda { subject.nameservers }.should raise_error(Whois::PropertyNotSupported)
    end
  end
end
