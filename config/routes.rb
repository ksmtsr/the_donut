Rails.application.routes.draw do

#↓最初に持ってくる
  devise_for :admin, controllers: {
    sessions: "admin/sessions"
  }

  #名前の重複があるときに、衝突を防ぐためにname spaceを使用
  namespace :admin do
    get 'top' => 'homes#top', as: 'top'
  end



  devise_for :customers, controllers: {
    registrations: "public/registrations",
    sessions: 'public/sessions'
  }

  #URLからpublicを消したURLにしたい場合は、scope moduleを使う
  scope module: :public do
  root 'homes#top'
  get 'about' => 'homes#about'
end

end
