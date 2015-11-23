##
# This code was generated by
# \ / _    _  _|   _  _
#  | (_)\/(_)(_|\/| |(/_  v1.0.0
#       /       /       

module Twilio
  module REST
    class OriginationUrlList < ListResource
      ##
      # Initialize the OriginationUrlList
      def initialize(version, trunk_sid: nil)
        super(version)
        
        # Path Solution
        @solution = {
            trunk_sid: trunk_sid
        }
        @uri = "/Trunks/#{@solution[:trunk_sid]}/OriginationUrls"
      end
      
      ##
      # Create a new OriginationUrlInstance
      def create(weight, priority, enabled, friendly_name, sip_url)
        data = {
            'Weight' => weight,
            'Priority' => priority,
            'Enabled' => enabled,
            'FriendlyName' => friendly_name,
            'SipUrl' => sip_url,
        }
        
        payload = @version.create(
            'POST',
            @uri,
            data: data
        )
        
        return OriginationUrlInstance.new(
            @version,
            payload,
            trunk_sid: @solution['trunk_sid'],
        )
      end
      
      ##
      # Reads OriginationUrlInstance records from the API as a list.
      def list(limit: nil, page_size: nil)
        self.stream(
            limit: limit,
            page_size: page_size
        ).entries
      end
      
      def stream(limit: nil, page_size: nil)
        limits = @version.read_limits(limit, page_size)
        
        page = self.page(
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
      # Retrieve a single page of OriginationUrlInstance records from the API.
      def page(page_token: nil, page_number: nil, page_size: nil)
        params = {
            'PageToken' => page_token,
            'Page' => page_number,
            'PageSize' => page_size,
        }
        response = @version.page(
            'GET',
            @uri,
            params
        )
        return OriginationUrlPage.new(
            @version,
            response,
            trunk_sid: @solution['trunk_sid'],
        )
      end
      
      ##
      # Constructs a OriginationUrlContext
      def get(sid)
        OriginationUrlContext.new(
            @version,
            trunk_sid: @solution[:trunk_sid],
            sid: sid,
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '#<Twilio.Trunking.V1.OriginationUrlList>'
      end
    end
  
    class OriginationUrlPage < Page
      def initialize(version, response, trunk_sid)
        super(version, response)
        
        # Path Solution
        @solution = {
            'trunk_sid' => trunk_sid,
        }
      end
      
      def get_instance(payload)
        return OriginationUrlInstance.new(
            @version,
            payload,
            trunk_sid: @solution['trunk_sid'],
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        '<Twilio.Trunking.V1.OriginationUrlPage>'
      end
    end
  
    class OriginationUrlContext < InstanceContext
      def initialize(version, trunk_sid, sid)
        super(version)
        
        # Path Solution
        @solution = {
            trunk_sid: trunk_sid,
            sid: sid,
        }
        @uri = "/Trunks/#{@solution[:trunk_sid]}/OriginationUrls/#{@solution[:sid]}"
      end
      
      ##
      # Fetch a OriginationUrlInstance
      def fetch
        params = {}
        
        @version.fetch(
            'GET',
            @uri,
            params,
        )
        
        return OriginationUrlInstance.new(
            @version,
            payload,
            trunk_sid: @solution['trunk_sid'],
            sid: @solution['sid'],
        )
      end
      
      ##
      # Deletes the OriginationUrlInstance
      def delete
        return @version.delete('delete', @uri)
      end
      
      ##
      # Update the OriginationUrlInstance
      def update(weight: nil, priority: nil, enabled: nil, friendly_name: nil, sip_url: nil)
        data = {
            'Weight' => weight,
            'Priority' => priority,
            'Enabled' => enabled,
            'FriendlyName' => friendly_name,
            'SipUrl' => sip_url,
        }
        
        payload = @version.update(
            'POST',
            @uri,
            data=data,
        )
        
        return OriginationUrlInstance.new(
            @version,
            payload,
            trunk_sid: @solution['trunk_sid'],
            sid: @solution['sid'],
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        context = @solution.map {|k, v| "#{k}: #{v}"}.join(',')
        "#<Twilio.Trunking.V1.OriginationUrlContext #{context}>"
      end
    end
  
    class OriginationUrlInstance < InstanceResource
      def initialize(version, payload, trunk_sid, sid: nil)
        super(version)
        
        # Marshaled Properties
        @properties = {
            'account_sid' => payload['account_sid'],
            'sid' => payload['sid'],
            'trunk_sid' => payload['trunk_sid'],
            'weight' => payload['weight'].to_i,
            'enabled' => payload['enabled'],
            'sip_url' => payload['sip_url'],
            'friendly_name' => payload['friendly_name'],
            'priority' => payload['priority'].to_i,
            'date_created' => Twilio.deserialize_iso8601(payload['date_created']),
            'date_updated' => Twilio.deserialize_iso8601(payload['date_updated']),
            'url' => payload['url'],
        }
        
        # Context
        @instance_context = nil
        @params = {
            'trunk_sid' => trunk_sid,
            'sid' => sid || @properties['sid'],
        }
      end
      
      def context
        unless @instance_context
          @instance_context = OriginationUrlContext.new(
              @version,
              @params['trunk_sid'],
              @params['sid'],
          )
        end
        @instance_context
      end
      
      def account_sid
        @properties['account_sid']
      end
      
      def sid
        @properties['sid']
      end
      
      def trunk_sid
        @properties['trunk_sid']
      end
      
      def weight
        @properties['weight']
      end
      
      def enabled
        @properties['enabled']
      end
      
      def sip_url
        @properties['sip_url']
      end
      
      def friendly_name
        @properties['friendly_name']
      end
      
      def priority
        @properties['priority']
      end
      
      def date_created
        @properties['date_created']
      end
      
      def date_updated
        @properties['date_updated']
      end
      
      def url
        @properties['url']
      end
      
      ##
      # Fetch a OriginationUrlInstance
      def fetch
        @context.fetch()
      end
      
      ##
      # Deletes the OriginationUrlInstance
      def delete
        @context.delete()
      end
      
      ##
      # Update the OriginationUrlInstance
      def update(weight: nil, priority: nil, enabled: nil, friendly_name: nil, sip_url: nil)
        @context.update(
            priority: nil,
            enabled: nil,
            friendly_name: nil,
            sip_url: nil,
        )
      end
      
      ##
      # Provide a user friendly representation
      def to_s
        context = @params.map{|k, v| "#{k}: #{v}"}.join(" ")
        "<Twilio.Trunking.V1.OriginationUrlInstance #{context}>"
      end
    end
  end
end