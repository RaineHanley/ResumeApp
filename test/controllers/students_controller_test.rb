require "test_helper"

class StudentsControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get "/students.json"
    assert_response 200

    data = JSON.parse(response.body)
    assert_equal Student.count, data.length
  end
  test "create" do
    assert_difference "Student.count", 1 do
      post "/students.json", params: { first_name: "Joe", last_name: "Smith", email: "joesmith@test.com", phone_number: "444-444-4444", short_bio: "This is my short bio", linkedin_url: "https://linkedin.com/joesmith", twitter_handle: "@JoeSmith", personal_website_url: "www.joesmith.com", online_resume_url: "www.joesmithssresume.com", github_url: "www.github.com/joesmith", photo: "image@test.com" }
      assert_response 200
    end
  end
end
