##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

require 'spec_helper.rb'

describe 'FeedbackSummary' do
  it "can create" do
  end

  it "receives create responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_count": 10200,
          "call_feedback_count": 729,
          "end_date": "2014-01-31",
          "include_subaccounts": false,
          "issues": [
              {
                  "count": 45,
                  "description": "imperfect-audio",
                  "percentage_of_total_calls": "0.04%"
              }
          ],
          "quality_score_average": 4.5,
          "quality_score_median": 4,
          "quality_score_standard_deviation": 1,
          "sid": "FSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_date": "2014-01-01",
          "status": "completed",
          "date_created": "Tue, 31 Aug 2010 20:36:28 +0000",
          "date_updated": "Tue, 31 Aug 2010 20:36:44 +0000"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .calls \
                              .feedback_summaries.create(start_date: "2008-01-02", end_date: "2008-01-02")
    
    expect(actual).to_not eq(nil)
  end

  it "can fetch" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .calls \
                       .feedback_summaries("FSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'get',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary/FSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives fetch responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        200,
      %q[
      {
          "account_sid": "ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "call_count": 10200,
          "call_feedback_count": 729,
          "end_date": "2014-01-31",
          "include_subaccounts": false,
          "issues": [
              {
                  "count": 45,
                  "description": "imperfect-audio",
                  "percentage_of_total_calls": "0.04%"
              }
          ],
          "quality_score_average": 4.5,
          "quality_score_median": 4,
          "quality_score_standard_deviation": 1,
          "sid": "FSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa",
          "start_date": "2014-01-01",
          "status": "completed",
          "date_created": "Tue, 31 Aug 2010 20:36:28 +0000",
          "date_updated": "Tue, 31 Aug 2010 20:36:44 +0000"
      }
      ]
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .calls \
                              .feedback_summaries("FSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").fetch()
    
    expect(actual).to_not eq(nil)
  end

  it "can delete" do
    @holodeck.mock(Twilio::TwilioResponse.new(500, ''))
    
    expect {
      @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                       .calls \
                       .feedback_summaries("FSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    }.to raise_exception(Twilio::REST::TwilioException)
    
    values = {}
    expect(
    @holodeck.has_request?(Holodeck::Request.new(
        method: 'delete',
        url: 'https://api.twilio.com/2010-04-01/Accounts/ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa/Calls/FeedbackSummary/FSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa.json',
    ))).to eq(true)
  end

  it "receives delete responses" do
    @holodeck.mock(Twilio::TwilioResponse.new(
        204,
      nil,
    ))
    
    actual = @client.api.v2010.accounts("ACaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa") \
                              .calls \
                              .feedback_summaries("FSaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa").delete()
    
    expect(actual).to eq(true)
  end
end