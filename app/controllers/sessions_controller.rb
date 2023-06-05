class SessionsController < ApplicationController
      #Login
      def create
        user = User.find_by(email: params[:email])
        
        if user && user.authenticate(params[:password])
            session[:user_id] = user.id
            pp session
            render json: user, status: :ok
        else
            render json: { errors: "Invalid email or password"}, status: :unauthorized
        end
    end
     
    # Logout
    def destroy
        session.delete :user_id
        head :no_content
    end
 
end
