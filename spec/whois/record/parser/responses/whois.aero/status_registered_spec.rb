# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.aero/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.aero.rb'

describe Whois::Record::Parser::WhoisAero, "status_registered.expected" do

  subject do
    file = fixture("responses", "whois.aero/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#disclaimer" do
    it do
      subject.disclaimer.should == "Access to .AERO WHOIS information is provided to assist persons in determining the contents of a domain name registration record in the Afilias registry database. The data in this record is provided by Afilias Limited for informational purposes only, and Afilias does not guarantee its accuracy.  This service is intended only for query-based access. You agree that you will use this data only for lawful purposes and that, under no circumstances will you use this data to: (a) allow, enable, or otherwise support the transmission by e-mail, telephone, or facsimile of mass unsolicited, commercial advertising or solicitations to entities other than the data recipient's own existing customers; or (b) enable high volume, automated, electronic processes that send queries or data to the systems of Registry Operator, a Registrar, or Afilias except as reasonably necessary to register domain names or modify existing registrations. All rights reserved. Afilias reserves the right to modify these terms at any time. By submitting this query, you agree to abide by this policy."
    end
  end
  describe "#domain" do
    it do
      subject.domain.should == "srilankan.aero"
    end
  end
  describe "#domain_id" do
    it do
      subject.domain_id.should == "D246-AERO"
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
      subject.status.should == ["OK"]
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
      subject.created_on.should == Time.parse("2002-03-26 06:48:27 UTC")
    end
  end
  describe "#updated_on" do
    it do
      subject.updated_on.should be_a(Time)
      subject.updated_on.should == Time.parse("2008-03-05 14:32:18 UTC")
    end
  end
  describe "#expires_on" do
    it do
      subject.expires_on.should be_a(Time)
      subject.expires_on.should == Time.parse("2010-03-26 06:48:27 UTC")
    end
  end
  describe "#registrar" do
    it do
      subject.registrar.should be_a(Whois::Record::Registrar)
      subject.registrar.id.should           == "380"
      subject.registrar.name.should         == "Tuonome IT"
      subject.registrar.organization.should == "Tuonome IT"
    end
  end
  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should          == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].id.should            == "C4526901-AERO"
      subject.registrant_contacts[0].name.should          == "Domain Name Administrator"
      subject.registrant_contacts[0].organization.should  == "SriLankan Airlines Ltd"
      subject.registrant_contacts[0].address.should       == "Admin Bldg"
      subject.registrant_contacts[0].city.should          == "Katunayaka"
      subject.registrant_contacts[0].zip.should           == "11450"
      subject.registrant_contacts[0].state.should         == "WP"
      subject.registrant_contacts[0].country_code.should  == "LK"
      subject.registrant_contacts[0].phone.should         == "+94.197331600"
      subject.registrant_contacts[0].fax.should           == "+94.197335160"
      subject.registrant_contacts[0].email.should         == "domregister@srilankan.aero"
    end
  end
  describe "#admin_contacts" do
    it do
      subject.admin_contacts.should be_a(Array)
      subject.admin_contacts.should have(1).items
      subject.admin_contacts[0].should be_a(Whois::Record::Contact)
      subject.admin_contacts[0].type.should          == Whois::Record::Contact::TYPE_ADMIN
      subject.admin_contacts[0].id.should            == "C4526901-AERO"
      subject.admin_contacts[0].name.should          == "Domain Name Administrator"
      subject.admin_contacts[0].organization.should  == "SriLankan Airlines Ltd"
      subject.admin_contacts[0].address.should       == "Admin Bldg"
      subject.admin_contacts[0].city.should          == "Katunayaka"
      subject.admin_contacts[0].zip.should           == "11450"
      subject.admin_contacts[0].state.should         == "WP"
      subject.admin_contacts[0].country_code.should  == "LK"
      subject.admin_contacts[0].phone.should         == "+94.197331600"
      subject.admin_contacts[0].fax.should           == "+94.197335160"
      subject.admin_contacts[0].email.should         == "domregister@srilankan.aero"
    end
  end
  describe "#technical_contacts" do
    it do
      subject.technical_contacts.should be_a(Array)
      subject.technical_contacts.should have(1).items
      subject.technical_contacts[0].should be_a(Whois::Record::Contact)
      subject.technical_contacts[0].type.should          == Whois::Record::Contact::TYPE_TECHNICAL
      subject.technical_contacts[0].id.should            == "C4526901-AERO"
      subject.technical_contacts[0].name.should          == "Domain Name Administrator"
      subject.technical_contacts[0].organization.should  == "SriLankan Airlines Ltd"
      subject.technical_contacts[0].address.should       == "Admin Bldg"
      subject.technical_contacts[0].city.should          == "Katunayaka"
      subject.technical_contacts[0].zip.should           == "11450"
      subject.technical_contacts[0].state.should         == "WP"
      subject.technical_contacts[0].country_code.should  == "LK"
      subject.technical_contacts[0].phone.should         == "+94.197331600"
      subject.technical_contacts[0].fax.should           == "+94.197335160"
      subject.technical_contacts[0].email.should         == "domregister@srilankan.aero"
    end
  end
  describe "#nameservers" do
    it do
      subject.nameservers.should be_a(Array)
      subject.nameservers.should have(4).items
      subject.nameservers[0].should be_a(Whois::Record::Nameserver)
      subject.nameservers[0].name.should == "dns2.srilankan.aero"
      subject.nameservers[1].should be_a(Whois::Record::Nameserver)
      subject.nameservers[1].name.should == "dns1.srilankan.aero"
      subject.nameservers[2].should be_a(Whois::Record::Nameserver)
      subject.nameservers[2].name.should == "s1.ns.slt.lk"
      subject.nameservers[3].should be_a(Whois::Record::Nameserver)
      subject.nameservers[3].name.should == "s2.ns.slt.lk"
    end
  end
end
