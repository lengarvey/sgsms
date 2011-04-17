require File.expand_path(File.join(File.dirname(__FILE__), %w(.. test_helper)))

class SgsmsTest < Test::Unit::TestCase
  include Sgsms
  context "An instance of the Sgsms class" do

    should "should load" do
      smser = Texter.new
      assert_equal smser.class, Texter
    end
    
    should "initialise parameters" do
      opts = {:user => 'test',
        :password => 'password',
        :from => 'sgsms-test'}
      smser = Texter.new(opts)
      assert smser.respond_to?(:options)
      assert_equal smser.options, opts
    end
    should "default to values" do
      opts = {:user => 'test',
        :password => 'password'} 
      smser = Texter.new(opts)
      assert smser.respond_to?(:options)
      assert_equal smser.options[:from], "sgsms"
    end
  end
  
  context "Sending an sms" do
    setup do
      @opts = {:user => 'test',
        :password => 'password'} 
      @smser = Texter.new(@opts)
    end
    should "send an sms using instance" do
      stub_send_ok
      response = @smser.send_sms("Hello", 1234)  
      assert_equal response, {:status=>:ok, 
        :id=>"34a637908349a796",
        :msgid=>6191845908398754} 
    end

    should "not send an sms" do
      assert true
    end
  end
end
