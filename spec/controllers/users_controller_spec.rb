require 'rails_helper'

RSpec.describe UsersController, type: :controller do
  render_views

  describe 'POST /users' do
    it 'renders new user object' do
      post :create, params: {
        user: {
          password: 'asdasdasd',
          username: 'test'
        }
      }

      actual_response = JSON.parse(response.body)
      puts "Actual response: #{actual_response}"

      expected_response = {
        "user" => {
          "username" => "test"
        }
      }
      puts "Expected response: #{expected_response}"

      expect(actual_response).to eq(expected_response)
    end
  end
end
