Rails.application.routes.draw do

  devise_for :users
  root to: 'landing#land'
  get    '/home',           to: 'landing#land'

  get    '/policy/promise', to: 'policy#promise'
  get    '/policy/privacy', to: 'policy#privacy'
  get    '/policy/aup',     to: 'policy#acceptable'
  get    '/policy/support', to: 'policy#support'
  get    '/policy/terms',   to: 'policy#terms'
  get    '/policy/security',to: 'policy#security'
  get    '/policy/trademark', to: 'policy#trademark'
  get    '/policy/dmca',    to: 'policy#dmca'
end
