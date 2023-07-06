require "test_helper"

class CapstonesControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/capstones.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Capstone.count, data.length
  end

  test "create" do
    assert_difference "Capstone.count", 1 do
      post "/capstones.json", params: { name: "Capstone Example" }
      assert_response 200
    end
  end

  test "show" do
    get "/capstones/#{Capstone.first.id}.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal ["id", "name", "description", "url", "screenshot"], data.keys
  end

  test "update" do
    skill = Capstone.first
    patch "/capstones/#{skill.id}.json", params: { name: "Updated capstone" }
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal "Updated capstone", data["name"]
  end

  test "destroy" do
    assert_difference "Capstone.count", -1 do
      delete "/capstones/#{Capstone.first.id}.json"
      assert_response 200
    end
  end
end
