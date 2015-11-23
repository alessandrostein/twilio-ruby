##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

require 'spec_helper.rb'

describe 'Local' do
  it "can read" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .incoming_phone_numbers \
                       .local.list()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Local.json',
    ))).to eq(true)
  end

  it "receives read_full responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Local.json?PageSize=1&Page=0",
          "incoming_phone_numbers": [
              {
                  "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "address_requirements": "none",
                  "api_version": "2010-04-01",
                  "beta": null,
                  "capabilities": {
                      "mms": true,
                      "sms": false,
                      "voice": true
                  },
                  "date_created": "Thu, 30 Jul 2015 23:19:04 +0000",
                  "date_updated": "Thu, 30 Jul 2015 23:19:04 +0000",
                  "friendly_name": "(808) 925-5327",
                  "phone_number": "+18089255327",
                  "sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
                  "sms_application_sid": "",
                  "sms_fallback_method": "POST",
                  "sms_fallback_url": "",
                  "sms_method": "POST",
                  "sms_url": "",
                  "status_callback": "",
                  "status_callback_method": "POST",
                  "trunk_sid": null,
                  "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
                  "voice_application_sid": "",
                  "voice_caller_id_lookup": false,
                  "voice_fallback_method": "POST",
                  "voice_fallback_url": null,
                  "voice_method": "POST",
                  "voice_url": null
              }
          ],
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Local.json?PageSize=1&Page=2",
          "next_page_uri": null,
          "num_pages": 3,
          "page": 0,
          "page_size": 1,
          "previous_page_uri": null,
          "start": 0,
          "total": 3,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Local.json?PageSize=1"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .incoming_phone_numbers \
                              .local.list()
    
    expect(actual).to_not eq(nil)
  end

  it "receives read_empty responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "end": 0,
          "first_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Local.json?PageSize=1&Page=0",
          "incoming_phone_numbers": [],
          "last_page_uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Local.json?PageSize=1&Page=2",
          "next_page_uri": null,
          "num_pages": 3,
          "page": 0,
          "page_size": 1,
          "previous_page_uri": null,
          "start": 0,
          "total": 3,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/Local.json?PageSize=1"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .incoming_phone_numbers \
                              .local.list()
    
    expect(actual).to_not eq(nil)
  end

  it "can create" do
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "address_requirements": "none",
          "api_version": "2010-04-01",
          "beta": false,
          "capabilities": {
              "mms": true,
              "sms": false,
              "voice": true
          },
          "date_created": "Thu, 30 Jul 2015 23:19:04 +0000",
          "date_updated": "Thu, 30 Jul 2015 23:19:04 +0000",
          "friendly_name": "(808) 925-5327",
          "phone_number": "+18089255327",
          "sid": "PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "sms_application_sid": "",
          "sms_fallback_method": "POST",
          "sms_fallback_url": "",
          "sms_method": "POST",
          "sms_url": "",
          "status_callback": "",
          "status_callback_method": "POST",
          "trunk_sid": null,
          "uri": "/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/IncomingPhoneNumbers/PNaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json",
          "voice_application_sid": "",
          "voice_caller_id_lookup": false,
          "voice_fallback_method": "POST",
          "voice_fallback_url": null,
          "voice_method": "POST",
          "voice_url": null
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .incoming_phone_numbers \
                              .local.create(phone_number: "+987654321")
    
    expect(actual).to_not eq(nil)
  end
end