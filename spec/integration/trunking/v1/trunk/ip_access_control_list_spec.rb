##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

require 'spec_helper.rb'

describe 'IpAccessControlList' do
  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .ip_access_control_lists("ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists/ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "trunk_sid": "TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 17 Jul 2015 21:25:15 +0000",
          "date_updated": "Fri, 17 Jul 2015 21:25:15 +0000",
          "friendly_name": "aaaa",
          "sid": "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists/ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))
    
    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists("ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    
    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .ip_access_control_lists("ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists/ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))
    
    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists("ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    
    expect(actual).to eq(true)
  end

  it "can create" do
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "trunk_sid": "TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "date_created": "Fri, 17 Jul 2015 21:25:15 +0000",
          "date_updated": "Fri, 17 Jul 2015 21:25:15 +0000",
          "friendly_name": "aaaa",
          "sid": "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists/ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
      }
      ]
    ))
    
    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists.create(ip_access_control_list_sid: "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa")
    
    expect(actual).to_not eq(nil)
  end

  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                         .ip_access_control_lists.list()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://trunking.twilio.com/v1/Trunks/TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists?PageSize=50&Page=0",
          "ip_access_control_lists": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "trunk_sid": "TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "date_created": "Fri, 17 Jul 2015 21:25:15 +0000",
                  "date_updated": "Fri, 17 Jul 2015 21:25:15 +0000",
                  "friendly_name": "aaaa",
                  "sid": "ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "url": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists/ALaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa"
              }
          ],
          "last_page_uri": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists?PageSize=50&Page=0",
          "next_page_uri": null,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "total": 1,
          "uri": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists?PageSize=50&Page=0"
      }
      ]
    ))
    
    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists.list()
    
    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists?PageSize=50&Page=0",
          "ip_access_control_lists": [],
          "next_page_uri": null,
          "page": 0,
          "page_size": 50,
          "previous_page_uri": null,
          "start": 0,
          "uri": "https://trunking.twilio.com/v1/Trunks/TKaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IpAccessControlLists?PageSize=50&Page=0"
      }
      ]
    ))
    
    actual = @client.trunking.v1.trunks("TRaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                                .ip_access_control_lists.list()
    
    expect(actual).to_not eq(nil)
  end
end