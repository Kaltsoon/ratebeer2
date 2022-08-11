class ApplicationController < ActionController::Base
  def authenticate
    admin_accounts = { 'pekka' => 'beer', 'arto' => 'foobar', 'matti' => 'ittam', 'vilma' => 'kangas' }

    authenticate_or_request_with_http_basic do |username, password|
      correct_password = admin_accounts[username]

      raise RuntimeError.new("Invalid credentials") if correct_password.nil? or correct_password != password

      return true
    end
  end
end
