require 'rails_helper'

RSpec.describe Api::V1::WeathersController, type: :request do
  let(:dummy_data) { "{\"weather_state\": \"clear\",\"probability\": \"20\"}"}
  describe "GET /weather" do
    it "returns weather data" do
      get :index
      response_dummy_data ={status: 200, body: JSON.parse(dummy_data)}
      # WeatherServiceをモック化して、get_weatherメソッドを呼び出すとresponse_dummy_dataを返すように設定
      allow(WeatherService).to receive(:get_weather).and_return(response_dummy_data)
      expect(response).to have_http_status(200)
      expect(response.body).to eq(response_dummy_data)
    end
  end
end
