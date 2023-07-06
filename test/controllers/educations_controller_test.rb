require "test_helper"

class EducationsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/educations.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Education.count, data.length
  end
  test "create" do
    assert_difference "Education.count", 1 do
      post "/educations.json", params: { start_date: "08-01-15", end_date: "05-30-19", degree: "Bachelor of Science", university_name: "San Francisco State University", details: "These are the the details" }
      assert_response 200
    end
  end

  test "show" do
    get "/educations/#{Education.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "start_date", "end_date", "degree", "university_name", "details", "created_at", "updated_at"], data.keys
  end
end
