Rails.application.routes.draw do
  post 'event' => 'event#receive'
  get 'events' => 'event#list'
end
