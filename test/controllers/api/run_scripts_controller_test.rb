require 'test_helper'

class Api::RunScriptsControllerTest < ActionDispatch::IntegrationTest
  test "should get run" do
    get api_run_scripts_run_url
    assert_response :success
  end

end
