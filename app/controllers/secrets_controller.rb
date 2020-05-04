class SecretsController < ApplicationController
  
  # since SecretsController inherits from ApplicationController,
  # and require_logged_in is defined there, SecretsController
  # has access to it.
  before_action :require_logged_in
  
  def show
  end

end