class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    render html: 'Hello, world!'
  end

  def maintaince
    render html: 'Sorry, the website is in maintaince process.
    We\'re come back soon.'
  end

end
