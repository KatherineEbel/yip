Rails.application.routes.draw do
  root to: 'businesses#index'
  resources :businesses
  get 'ui', to: 'ui#index'

  namespace 'ui' do
    ui_views_path = Rails.root.join('app', 'views', 'ui')
    Dir.entries(ui_views_path)
       .reject { |entry| entry.start_with? '.' }
       .map { |view| view.partition('.').first }
       .each do |action|
      get action, action: action
    end
  end
end
