Rails.application.routes.draw do
  get 'pages/info'
  root to: redirect('/ideas')
  resources :ideas
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  #練習
  namespace :api do
    namespace :v1 do
      resources :hello, only:[:index], #コントローラーのindexメソッドを指定するルーティング。　localhost:3000/api/v1/helloでアクセス。
      resources :reportIndex, only[:index] #reportIndexコントローラーのindexメソッドを指定。DBとのやりとりをして、データを処理後JSONでNuxtに返す。
    end
  end
end