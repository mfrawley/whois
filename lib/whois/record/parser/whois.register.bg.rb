#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2013 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/base'


module Whois
  class Record
    class Parser

      #
      # = whois.register.bg parser
      #
      # Parser for the whois.register.bg server.
      #
      # NOTE: This parser is just a stub and provides only a few basic methods
      # to check for domain availability and get domain status.
      # Please consider to contribute implementing missing methods.
      # See WhoisNicIt parser for an explanation of all available methods
      # and examples.
      #
      class WhoisRegisterBg < Base

        property_supported :status do
          if content_for_scanner =~ /registration status:\s+(.+?)\n/
            case $1.downcase
            when "registered"
              :registered
            else
              Whois.bug!(ParserError, "Unknown status `#{$1}'.")
            end
          else
            :available
          end
        end

        property_supported :available? do
          !!(content_for_scanner =~ /Domain name (.+?) does not exist/)
        end

        property_supported :registered? do
          !available?
        end


        property_supported :created_on do
          if content_for_scanner =~ /activated on:\s+(.*?)\n/
            # Time.parse("30/06/2003 00:00:00")
            # => ArgumentError: argument out of range
            Time.parse($1.gsub("/", "-"))
          end
        end

        property_not_supported :updated_on

        property_supported :expires_on do
          if content_for_scanner =~ /expires at:\s+(.*?)\n/
            # Time.parse("30/06/2003 00:00:00")
            # => ArgumentError: argument out of range
            Time.parse($1.gsub("/", "-"))
          end
        end


        property_supported :nameservers do
          if content_for_scanner =~ /NAME SERVER INFORMATION:\n((.+\n)+)\s+\n/
            $1.split("\n").map do |line|
              if line =~ /(.+) \((.+)\)/
                Record::Nameserver.new(:name => $1, :ipv4 => $2)
              else
                Record::Nameserver.new(:name => line.strip)
              end
            end
          end
        end

      end

    end
  end
end
