Rails.application.routes.draw do
  resources :questions
get "quiz/index"
  post"quiz/start"
  get "quiz/question"
  post "quiz/questions"
  post "quiz/answer"
  get "quiz/end"
  post "choices/create"
  post "choices/destroy"
end

