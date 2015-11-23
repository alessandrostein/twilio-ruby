##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class ShortCodeList < ListResource
      ##
      # Initialize the ShortCodeList
      def initialize(version, account_sid: nil)
        super(version)
        
        # Path Solution
        @solution = {
            account_sid: account_sid
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/SMS/ShortCodes.json"
      end
      
      ##
      # Reads ShortCodeInstance records from the API as a list.
      def list(friendly_name: nil, short_code: nil, limit: nil, page_size: nil)
        self.stream(
            friendly_name: friendly_name,
            short_code: short_code,
            limit: limit,
            page_size: page_size
        ).entries
      end
      
      def stream(friendly_name: nil, short_code: nil, limit: nil, page_size: nil)
        limits = @version.read_limits(limit, page_size)
        
        page = self.page(
            friendly_name: friendly_name,
            short_code: short_code,
            page_size: limits['page_size'],
        )
        
        @version.stream(page, limit: limits['limit'], page_limit: limits['page_limit'])
      end
      
      def each
        limits = @version.read_limits
        
        page = self.page(
            page_size: limits['page_size'],
        )
        
        @version.stream(page,
                        limit: limits['limit'],
                        page_limit: limits['page_limit']).each {|x| yield x}
      end
      
      ##
      # Retrieve a single page of ShortCodeInstance records from the API.
      def page(friendly_name: nil, short_code: nil, page_token: nil, page_number: nil, page_size: nil)
        params = {
            'FriendlyName' => friendly_name,
            'ShortCode' => short_code,
            'PageToken' => page_token,
            'Page' => page_number,
            'PageSize' => page_size,
        }
        response = @version.page(
            'GET',
            @uri,
            params
        )
        return ShortCodePage.new(
            @version,
            response,
            account_sid: @solution['account_sid'],
        )
      end
      
      ##
      # Constructs a ShortCodeContext
      def get(sid)
        ShortCodeContext.new(
            @version,
            account_sid: @solution[:account_sid],
            sid: sid,
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Api.V2010.ShortCodeList>'
      end
    end
  
    class ShortCodePage < Page
      def initialize(version, response, account_sid)
        super(version, response)
        
        # Path Solution
        @solution = {
            'account_sid' => account_sid,
        }
      end
      
      def get_instance(payload)
        return ShortCodeInstance.new(
            @version,
            payload,
            account_sid: @solution['account_sid'],
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '<Twilio.Api.V2010.ShortCodePage>'
      end
    end
  
    class ShortCodeContext < InstanceContext
      def initialize(version, account_sid, sid)
        super(version)
        
        # Path Solution
        @solution = {
            account_sid: account_sid,
            sid: sid,
        }
        @uri = "/Accounts/#{@solution[:account_sid]}/SMS/ShortCodes/#{@solution[:sid]}.json"
      end
      
      ##
      # Fetch a ShortCodeInstance
      def fetch
        params = {}
        
        @version.fetch(
            'GET',
            @uri,
            params,
        )
        
        return ShortCodeInstance.new(
            @version,
            payload,
            account_sid: @solution['account_sid'],
            sid: @solution['sid'],
        )
      end
      
      ##
      # Update the ShortCodeInstance
      def update(friendly_name: nil, api_version: nil, sms_url: nil, sms_method: nil, sms_fallback_url: nil, sms_fallback_method: nil)
        data = {
            'FriendlyName' => friendly_name,
            'ApiVersion' => api_version,
            'SmsUrl' => sms_url,
            'SmsMethod' => sms_method,
            'SmsFallbackUrl' => sms_fallback_url,
            'SmsFallbackMethod' => sms_fallback_method,
        }
        
        payload = @version.update(
            'POST',
            @uri,
            data=data,
        )
        
        return ShortCodeInstance.new(
            @version,
            payload,
            account_sid: @solution['account_sid'],
            sid: @solution['sid'],
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
        "#<Twilio.Api.V2010.ShortCodeContext #{context}>"
      end
    end
  
    class ShortCodeInstance < InstanceResource
      def initialize(version, payload, account_sid, sid: nil)
        super(version)
        
        # Marshaled Properties
        @properties = {
            'account_sid' => payload['account_sid'],
            'api_version' => payload['api_version'],
            'date_created' => Twilio.deserialize_rfc2822(payload['date_created']),
            'date_updated' => Twilio.deserialize_rfc2822(payload['date_updated']),
            'friendly_name' => payload['friendly_name'],
            'short_code' => payload['short_code'],
            'sid' => payload['sid'],
            'sms_fallback_method' => payload['sms_fallback_method'],
            'sms_fallback_url' => payload['sms_fallback_url'],
            'sms_method' => payload['sms_method'],
            'sms_url' => payload['sms_url'],
            'uri' => payload['uri'],
        }
        
        # Context
        @instance_context = nil
        @params = {
            'account_sid' => account_sid,
            'sid' => sid || @properties['sid'],
        }
      end
      
      def context
        unless @instance_context
          @instance_context = ShortCodeContext.new(
              @version,
              @params['account_sid'],
              @params['sid'],
          )
        end
        @instance_context
      end
      
      def account_sid
        @properties['account_sid']
      end
      
      def api_version
        @properties['api_version']
      end
      
      def date_created
        @properties['date_created']
      end
      
      def date_updated
        @properties['date_updated']
      end
      
      def friendly_name
        @properties['friendly_name']
      end
      
      def short_code
        @properties['short_code']
      end
      
      def sid
        @properties['sid']
      end
      
      def sms_fallback_method
        @properties['sms_fallback_method']
      end
      
      def sms_fallback_url
        @properties['sms_fallback_url']
      end
      
      def sms_method
        @properties['sms_method']
      end
      
      def sms_url
        @properties['sms_url']
      end
      
      def uri
        @properties['uri']
      end
      
      ##
      # Fetch a ShortCodeInstance
      def fetch
        @context.fetch()
      end
      
      ##
      # Update the ShortCodeInstance
      def update(friendly_name: nil, api_version: nil, sms_url: nil, sms_method: nil, sms_fallback_url: nil, sms_fallback_method: nil)
        @context.update(
            api_version: nil,
            sms_url: nil,
            sms_method: nil,
            sms_fallback_url: nil,
            sms_fallback_method: nil,
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        context = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
        "<Twilio.Api.V2010.ShortCodeInstance #{context}>"
      end
    end
  end
end