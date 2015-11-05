class ChallengesController < ApplicationController
before_action :set_challenge, only: [:show, :edit, :update, :destroy]


  def index
    @challenges = Challenge.all
  end

  # GET /games/new
  def new
    @challenge = Challenge.new
  end

  # GET /games/1/edit
  def edit
  end

   def show
  end

      def set_challenge
      @challenge = Challenge.find(params[:id])
    end

  def create
    @challenge = Challenge.new(challenge_params)

     if @challenge.save
	    redirect_to :game => :index
	  else
	    @title = "Sign up"
	    render 'new'
	  end
  end



private


    def challenge_params
      params.require(:challenge).permit(:challenger, :user_id, :challenged, :challenger_id, :challenged_id)
    end



end
