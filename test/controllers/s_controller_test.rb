require 'test_helper'

class SControllerTest < ActionDispatch::IntegrationTest
  test "should get senti" do
    get s_senti_url
    assert_response :success
  end

end
