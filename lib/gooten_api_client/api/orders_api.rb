=begin
Gooten API


An overview of the various API methods that Gooten offers, including examples of each.


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git




=end

require "uri"

module GootenApiClient

  class OrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end


    # Get an order
    # Gets basic information about an order.
    # @param id Order Id
    # @param version Version of the api being used
    # @param source Description of the source-- ios, android, api
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language_code Resultant info language. Defaults to &#39;en&#39;.
    # @return [PostSubmittedOrder]
    def g_et_orders(id, version, source, opts = {})
      data, status_code, headers = g_et_orders_with_http_info(id, version, source, opts)
      return data
    end

    # Get an order
    # Gets basic information about an order.
    # @param id Order Id
    # @param version Version of the api being used
    # @param source Description of the source-- ios, android, api
    # @param [Hash] opts the optional parameters
    # @option opts [String] :language_code Resultant info language. Defaults to &#39;en&#39;.
    # @return [Array<(PostSubmittedOrder, Fixnum, Hash)>] PostSubmittedOrder data, response status code and response headers
    def g_et_orders_with_http_info(id, version, source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi#g_et_orders ..."
      end
      
      # verify the required parameter 'id' is set
      fail "Missing the required parameter 'id' when calling g_et_orders" if id.nil?
      
      # verify the required parameter 'version' is set
      fail "Missing the required parameter 'version' when calling g_et_orders" if version.nil?
      
      # verify the required parameter 'source' is set
      fail "Missing the required parameter 'source' when calling g_et_orders" if source.nil?
      
      # resource path
      local_var_path = "/v/{version}/source/{source}/orders/".sub('{format}','json').sub('{' + 'version' + '}', version.to_s).sub('{' + 'source' + '}', source.to_s)

      # query parameters
      query_params = {}
      query_params[:'id'] = id
      query_params[:'languageCode'] = opts[:'language_code'] if opts[:'language_code']

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'PostSubmittedOrder')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#g_et_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end


    # Submit an order
    # Places an order into the system. An order can be submitted as PrePayment (in order to temporarily place an order and get an ID for Paypal) using the IsPreSubmit flag.
    # @param order Order to be submitted
    # @param version Version of the api being used
    # @param source Description of the source-- ios, android, api
    # @param [Hash] opts the optional parameters
    # @return [OrderResult]
    def p_ost_orders(order, version, source, opts = {})
      data, status_code, headers = p_ost_orders_with_http_info(order, version, source, opts)
      return data
    end

    # Submit an order
    # Places an order into the system. An order can be submitted as PrePayment (in order to temporarily place an order and get an ID for Paypal) using the IsPreSubmit flag.
    # @param order Order to be submitted
    # @param version Version of the api being used
    # @param source Description of the source-- ios, android, api
    # @param [Hash] opts the optional parameters
    # @return [Array<(OrderResult, Fixnum, Hash)>] OrderResult data, response status code and response headers
    def p_ost_orders_with_http_info(order, version, source, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug "Calling API: OrdersApi#p_ost_orders ..."
      end
      
      # verify the required parameter 'order' is set
      fail "Missing the required parameter 'order' when calling p_ost_orders" if order.nil?
      
      # verify the required parameter 'version' is set
      fail "Missing the required parameter 'version' when calling p_ost_orders" if version.nil?
      
      # verify the required parameter 'source' is set
      fail "Missing the required parameter 'source' when calling p_ost_orders" if source.nil?
      
      # resource path
      local_var_path = "/v/{version}/source/{source}/orders/".sub('{format}','json').sub('{' + 'version' + '}', version.to_s).sub('{' + 'source' + '}', source.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}

      # HTTP header 'Accept' (if needed)
      _header_accept = ['application/json']
      _header_accept_result = @api_client.select_header_accept(_header_accept) and header_params['Accept'] = _header_accept_result

      # HTTP header 'Content-Type'
      _header_content_type = ['application/json']
      header_params['Content-Type'] = @api_client.select_header_content_type(_header_content_type)

      # form parameters
      form_params = {}

      # http body (model)
      post_body = @api_client.object_to_http_body(order)
      
      auth_names = []
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'OrderResult')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: OrdersApi#p_ost_orders\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end

end