require "test_helper"

class SkillsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/skills.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Skill.count, data.length
  end

  test "create" do
    assert_difference "Skill.count", 1 do
      post "/skills.json", params: { skill_name: "Python" }
      assert_response 200
    end
  end
end
