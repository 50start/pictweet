Rails.application.routes.draw do
  devise_for :users
    root  'tweets#index'
 #get   'tweets'      =>  'tweets#index'     #ツイート一覧画面 
 #get   'tweets/new'  =>  'tweets#new'       #ツイート投稿画面
 #post  'tweets'      =>  'tweets#create'    #ツイートデーター保存
 #delete  'tweets/:id'  => 'tweets#destroy'
 #get   'tweets/:id'  =>  'tweets#show'
 #get   'tweets/:id/edit'  => 'tweets#edit'
 #patch   'tweets/:id'  => 'tweets#update'
 #get   'users/:id'   =>  'users#show'       #マイページへのルーティング

resources :tweets do                    #tweets_controllerに対してのresourcesメソッド
resources :comments, only: [:create]
end
resources :users, only: [:show]
end