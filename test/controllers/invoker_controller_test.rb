require "test_helper"

class InvokerControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get invoker_new_url
    assert_response :success
  end

  test "should get create" do
    get invoker_create_url
    assert_response :success
  end
end
