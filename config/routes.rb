Rails.application.routes.draw do
 resource :wishes
 root 'wishes#index'

end
