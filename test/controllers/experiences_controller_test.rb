require "test_helper"

class ExperiencesControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end

  test "index" do
    get "/experiences.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Experience.count, data.length
  end

  test "show" do
    get "/experiences/#{Experience.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "start_date", "end_date", "job_title", "company_name", "details"], data.keys
  end

  test "create" do
    assert_difference "Experience.count", 1 do
      post "/experiences.json", params: { start_date: "date", end_date: "date", job_title: "test", company_name: "test", details: "Test" }
      assert_response 200
    end
  end
end
