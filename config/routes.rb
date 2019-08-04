Rails.application.routes.draw do
#メイン画面
  get 'board/index', to: 'boards#index'
#ログイン・ログアウト
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
#会社一覧から検索
  get 'company/search', to: 'companies#search'
  get 'company/select', to: 'companies#select'
#お気に入り
  post 'likes/:company_id/create', to: 'likes#create'
  post 'likes/:company_id/destroy', to: 'likes#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
#ログイン画面
  resources :home, only: %i[index]
#ユーザー画面
  resources :users, only: %i[show new create]
#会社画面
  resources :companies
#コメント（画面：会社show）
  resources :connects, only: %i[new show create destroy]
  resources :comments, only: %i[create destroy]
#チャット画面
  resources :rooms, only: %i[index new show]

end
