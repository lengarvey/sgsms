$:.unshift File.dirname(__FILE__)

# require 'sgsms/...'
require 'net/http'

module Sgsms
  class Texter
    

    def initialize(opts={})
      @options = opts
      @options[:from] = "sgsms" unless @options[:from]
    end
   
    attr_accessor :options 
    
    def send_sms(message, to, opts={})
      sms_params = {
        :user => opts[:user] || @options[:user], 
        :password => opts[:password] || @options[:password],
        :from => opts[:from] || @options[:from],
        :action => 'sendsms',
        :text => message,
        :to => to
      }
      
      raise :user_missing unless sms_params[:user]
      raise :password_missing unless sms_params[:password]
      raise :from_missing unless sms_params[:from]

      url = URI.join("http://smsglobal.com.au", 'http-api.php')
      url.query = sms_params.map {|k,v| "#{k.to_s}=#{v.to_s}"}.join('&')
      response = Net::HTTP.get(url)

      puts response
      return {:status => :ok, :id => 1 }

    end

  end
end
