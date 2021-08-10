require "test_helper"

class JokeTest < ActiveSupport::TestCase
  test "should not save Joke without field Body" do
        j = Joke.new
        assert_not j.save
  end
end
