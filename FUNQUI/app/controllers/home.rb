Projecto::App.controllers :home do
  
  get :index, :map => '/' do  
    @torneo=Torneo.new
    @torneos = Torneo.all
    render 'home/index'
  end
  
  post :create do
	@torneo=Torneo.new(params[:torneo])
        @torneo.save
        @torneos = Torneo.all
	render 'home/index'
      # @torneo = Torneo.new(params[:torneo])
      # @torneo.save
      # password_confirmation = params[:user][:password_confirmation]
      # params[:user].reject!{|k,v| k == 'password_confirmation'}
      # if (params[:user][:password] == password_confirmation)
      #   @user = User.new(params[:user])
      #   if @user.save
      #     flash[:success] = 'User created'
      #     redirect '/'
      #   else
      #     flash.now[:error] = 'All fields are mandatory'
      #     render 'users/new'
      #   end
      # else
      #   @user = User.new (params[:user])
      #   flash.now[:error] = 'Passwords do not match'
      #   render 'users/new'          
      # end
  end

end
