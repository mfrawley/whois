# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.denic.de/schema-1.11.0/property_nameservers_with_ip.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.denic.de.rb'

describe Whois::Record::Parser::WhoisDenicDe, "property_nameservers_with_ip.expected" do

  subject do
    file = fixture("responses", "whois.denic.de/schema-1.11.0/property_nameservers_with_ip.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(3).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns1.prodns.de"
      subject.nameservers[0].ipv4.should == "213.160.64.75"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns2.prodns.de"
      subject.nameservers[1].ipv4.should == "213.160.65.75"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.prodns.de"
      subject.nameservers[2].ipv4.should == "83.133.190.12"
    end
  end
end
