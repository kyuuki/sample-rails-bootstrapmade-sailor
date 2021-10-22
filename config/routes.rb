Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'static_page#home'
  # root to: 'static_page#home'  # 上記はこれの省略形

  get '/about', to: 'static_page#about'
  get '/team', to: 'static_page#team'
  get '/testimonials', to: 'static_page#testimonials'
  get '/services', to: 'static_page#services'
  get '/portfolio', to: 'static_page#portfolio'
  get '/portfolio-details', to: 'static_page#portfolio_details'
  get '/pricing', to: 'static_page#pricing'
  get '/blog', to: 'static_page#blog'
  get '/blog-single', to: 'static_page#blog_single'
  get '/contact', to: 'static_page#contact'
end
