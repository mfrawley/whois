# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.centralnic.com/hu.com/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.centralnic.com.rb'

describe Whois::Record::Parser::WhoisCentralnicCom, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.centralnic.com/hu.com/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "This whois service is provided by CentralNic Ltd and only contains information pertaining to Internet domain names we have registered for our customers. By using this service you are agreeing (1) not to use any information presented here for any purpose other than determining ownership of domain names, (2) not to store or reproduce this data in any way, (3) not to use any high-volume, automated, electronic processes to obtain data from this service. Abuse of this service is monitored and actions in contravention of these terms will result in being permanently blacklisted. All data is (c) CentralNic Ltd https://www.centralnic.com/"
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "xxx.hu.com"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "CNIC-DO592232"
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
      subject.status.should == ["TRANSFER PROHIBITED"]
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
      subject.created_on.should == Time.parse("2008-08-27 23:18:29 UTC")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2011-07-03 00:15:41 UTC")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2012-08-27 23:59:59 UTC")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "H292913"
      subject.registrar.name.should         == nil
      subject.registrar.organization.should == "Network Solutions LLC"
      subject.registrar.url.should          == "http://www.networksolutions.com/"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "37300766"
      subject.registrant_contacts[0].name.should          == "DIANAMIC ABRASIVE PRODUCTS INC"
      subject.registrant_contacts[0].organization.should  == "DIANAMIC ABRASIVE PRODUCTS INC"
      subject.registrant_contacts[0].address.should       == "2566 INDUSTRIAL ROW DRIVE"
      subject.registrant_contacts[0].city.should          == "TROY"
      subject.registrant_contacts[0].zip.should           == "48084"
      subject.registrant_contacts[0].state.should         == "MI"
      subject.registrant_contacts[0].country.should       == nil
      subject.registrant_contacts[0].country_code.should  == "US"
      subject.registrant_contacts[0].phone.should         == "+1.248280118"
      subject.registrant_contacts[0].fax.should           == nil
      subject.registrant_contacts[0].email.should         == "no.valid.email@worldnic.com"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should            == "37300766"
      subject.admin_contacts[0].name.should          == "DIANAMIC ABRASIVE PRODUCTS INC"
      subject.admin_contacts[0].organization.should  == "DIANAMIC ABRASIVE PRODUCTS INC"
      subject.admin_contacts[0].address.should       == "2566 INDUSTRIAL ROW DRIVE"
      subject.admin_contacts[0].city.should          == "TROY"
      subject.admin_contacts[0].zip.should           == "48084"
      subject.admin_contacts[0].state.should         == "MI"
      subject.admin_contacts[0].country.should       == nil
      subject.admin_contacts[0].country_code.should  == "US"
      subject.admin_contacts[0].phone.should         == "+1.248280118"
      subject.admin_contacts[0].fax.should           == nil
      subject.admin_contacts[0].email.should         == "no.valid.email@worldnic.com"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "37300766"
      subject.technical_contacts[0].name.should          == "DIANAMIC ABRASIVE PRODUCTS INC"
      subject.technical_contacts[0].organization.should  == "DIANAMIC ABRASIVE PRODUCTS INC"
      subject.technical_contacts[0].address.should       == "2566 INDUSTRIAL ROW DRIVE"
      subject.technical_contacts[0].city.should          == "TROY"
      subject.technical_contacts[0].zip.should           == "48084"
      subject.technical_contacts[0].state.should         == "MI"
      subject.technical_contacts[0].country.should       == nil
      subject.technical_contacts[0].country_code.should  == "US"
      subject.technical_contacts[0].phone.should         == "+1.248280118"
      subject.technical_contacts[0].fax.should           == nil
      subject.technical_contacts[0].email.should         == "no.valid.email@worldnic.com"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(2).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "ns27.worldnic.com"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "ns28.worldnic.com"
    end
  end
end
