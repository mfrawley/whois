# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tucows.com/property_contacts_3.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.tucows.com.rb'

describe Whois::Record::Parser::WhoisTucowsCom, "property_contacts_3.expected" do

  subject do
    file = fixture("responses", "whois.tucows.com/property_contacts_3.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    described_class.new(part)
  end

  describe "#registrant_contacts" do
    it do
      subject.registrant_contacts.should be_a(Array)
      subject.registrant_contacts.should have(1).items
      subject.registrant_contacts[0].should be_a(Whois::Record::Contact)
      subject.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      subject.registrant_contacts[0].name.should         == "Daniel Austin"
      subject.registrant_contacts[0].organization.should == nil
      subject.registrant_contacts[0].address.should      == "3 Gunnery Terrace\nMilverton"
      subject.registrant_contacts[0].city.should         == "Leamington Spa"
      subject.registrant_contacts[0].zip.should          == "CV32 5PE"
      subject.registrant_contacts[0].state.should        == "Warwickshire"
      subject.registrant_contacts[0].country_code.should == "UK"
      subject.registrant_contacts[0].phone.should        == nil
      subject.registrant_contacts[0].fax.should          == nil
      subject.registrant_contacts[0].email.should        == nil
    end
  end
end
