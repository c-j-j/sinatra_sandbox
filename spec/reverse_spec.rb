require_relative '../reverse.rb'
require 'rack/test'

set :environment, :test

def app
    Sinatra::Application
end

describe 'Reverse Service' do

    include Rack::Test::Methods
    it 'should reverse the string provided to it' do
        reverse('Chris').should == 'sirhC'        
    end

    it 'should load the home page' do
        get '/'
        last_response.should be_ok
    end

    it 'should post okay' do
        post '/', params = { :str => 'Jeff' }
        last_response.body.should == 'ffeJ'
    end
end
