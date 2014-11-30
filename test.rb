require_relative 'main.rb'

require 'test/unit'
require 'rack/test'

ENV['ENV_ENV'] = 'test'

class IndexTest < MiniTest::TestCase
    include Rack::Test::Methods

    def app
        Sinatra::Application
    end

    def test_it_says_hello_world
        get '/'
        assert last_response.ok?
        assert_equal 'hello, world', last_response.body
    end
end
