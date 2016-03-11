=begin


OpenAPI spec version: 1

Generated by: https://github.com/swagger-api/swagger-codegen.git


=end

require 'spec_helper'
require 'json'

# Unit tests for SwaggerClient::PriceestimateApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'PriceestimateApi' do
  before do
    # run before each test
    @instance = SwaggerClient::PriceestimateApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PriceestimateApi' do
    it 'should create an instact of PriceestimateApi' do
      @instance.should be_a(SwaggerClient::PriceestimateApi)
    end
  end

  # unit tests for p_ost_priceestimate
  # Get an order price
  # Get the price of an order, including discounts from a coupon.
  # @param order Order to potentially be submitted
  # @param version Version of the api being used
  # @param source Description of the source-- ios, android, api
  # @param [Hash] opts the optional parameters
  # @return [OrderPriceResult]
  describe 'p_ost_priceestimate test' do
    it "should work" do
      # assertion here
      # should be_a()
      # should be_nil
      # should ==
      # should_not ==
    end
  end

end