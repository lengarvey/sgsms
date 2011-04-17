require 'test/unit'
require 'shoulda'
require 'fakeweb'
require File.dirname(__FILE__) + '/../lib/sgsms'

FakeWeb.allow_net_connect = false

def stub_send(response)
  FakeWeb.register_uri(:any, /.*smsglobal.*/, :body => response)
end

def stub_send_ok
  stub_send("OK: 0; Sent queued message ID: 34a637908349a796\nSMSGlobalMsgID:6191845908398754")
end

def stub_send_failure(error="Missing parameter",param="from")
  stub_send("ERROR: #{error}: #{param}")
end
