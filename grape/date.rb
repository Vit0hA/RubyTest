require 'grape'

class CheckTime < Grape::API
  format :json
  prefix :api
  resource :v1 do
    resource :mkdate do
      get :Ymd do
        Time.now.strftime("%Y%m%d")
      end
    end
  end
end
