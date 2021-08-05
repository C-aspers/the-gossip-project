class SessionsController < ApplicationController

  def new
    @user = User.all
  end

  def create
    # cherche s'il existe un utilisateur en base avec l’e-mail
    user_params = params[:user]
    user = User.find_by(email: user_params[:email])

    # on vérifie si l'utilisateur existe bien ET si on arrive à l'authentifier (méthode bcrypt) avec le mot de passe 
    if user && user.authenticate(user_params[:password])
      log_in(user)
        session[:success] = "Successfully logged in"
      redirect_to home_path
    else
      session[:error] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    session.delete(:user_id)
  end

end
