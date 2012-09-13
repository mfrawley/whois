# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.ua/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.ua.rb'

describe Whois::Record::Parser::WhoisUa, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.ua/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#domain" do
    it do
      subject.domain.should == "google.com.ua"
    end
  end
  describe "#domain_id" do
    it do
      lambda { subject.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_whois" do
    it do
      lambda { subject.referral_whois }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#referral_url" do
    it do
      lambda { subject.referral_url }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      subject.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      subject.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      subject.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      subject.created_on.should be_a(Time)
      subject.created_on.should == Time.parse("2002-12-04 00:00:00")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2011-11-04 18:58:42")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2012-12-04 00:00:00")
    end
  end
  describe "#registrar" do
    it do
      lambda { subject.registrar }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrant_contacts" do
    it do
      lambda { subject.registrant_contacts }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should            == "N/A"
      subject.admin_contacts[0].name.should          == nil
      subject.admin_contacts[0].organization.should  == "Google Inc."
      subject.admin_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.admin_contacts[0].city.should          == "Mountain View"
      subject.admin_contacts[0].zip.should           == "94043"
      subject.admin_contacts[0].state.should         == "CA"
      subject.admin_contacts[0].country.should       == "US"
      subject.admin_contacts[0].country_code.should  == nil
      subject.admin_contacts[0].phone.should         == "+1 6503300100"
      subject.admin_contacts[0].fax.should           == "+1 6506188571"
      subject.admin_contacts[0].email.should         == "dns-admin@google.com"
      subject.admin_contacts[0].created_on.should    == nil
      subject.admin_contacts[0].updated_on.should    == Time.parse("2012-02-01 21:09:42")
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "N/A"
      subject.technical_contacts[0].name.should          == nil
      subject.technical_contacts[0].organization.should  == "Google Inc."
      subject.technical_contacts[0].address.should       == "1600 Amphitheatre Parkway"
      subject.technical_contacts[0].city.should          == "Mountain View"
      subject.technical_contacts[0].zip.should           == "94043"
      subject.technical_contacts[0].state.should         == "CA"
      subject.technical_contacts[0].country.should       == "US"
      subject.technical_contacts[0].country_code.should  == nil
      subject.technical_contacts[0].phone.should         == "+1 6503300100"
      subject.technical_contacts[0].fax.should           == "+1 6506188571"
      subject.technical_contacts[0].email.should         == "dns-admin@google.com"
      subject.technical_contacts[0].created_on.should    == nil
      subject.technical_contacts[0].updated_on.should    == Time.parse("2012-02-01 21:09:42")
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns2.google.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns4.google.com"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "ns3.google.com"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "ns1.google.com"
    end
  end
end
