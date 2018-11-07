class AllornothingController < ApplicationController
  before_action :get_info, only: [:load, :start]
  def index
  end

  def load
  	p @card_holder
  	render "index"
  end

  def start
  	flash[:notice] = nil
  	card_holder = Cardholder.find_by(:card_number => params[:cardNumber])
  	if card_holder["balance"].to_f < params[:bid].to_f
      flash[:notice] = "No sufficient balance."
  	elsif params[:bid].to_f < 1
      flash[:notice] = "Points must be greater than 0."
  	else
	  	aondetailObj = {:cardholder_id => @card_holder["id"],  :bid => params[:bid], :roll => rand(1..6)}
	  	aondetailObj[:win] = aondetailObj[:roll] % 2 == 0
	  	Aondetail.create(aondetailObj)
	  	pointsWon = aondetailObj[:win] ? aondetailObj[:bid].to_f * 2 : aondetailObj[:bid].to_f - aondetailObj[:bid].to_f * 2
	  	card_holder["balance"] = (card_holder["balance"].to_f + pointsWon).to_i
	  	card_holder.save
	  	get_info
	  end
	  render "index"
  end

  private 
  def get_info
  	flash[:notice] = nil
  	flash[:alert] = nil
  	card_holder = Cardholder.find_by(:card_number => params[:cardNumber])
  	if card_holder == nil
      flash[:alert] = "Card Number incorrect."
      redirect_to "/allornothing"
  	else 
	    @card_holder = card_holder.as_json(
	    {
	      include:
	      {
	        aondetail:{
	          only: [:win,:bid,:roll]
	        }
	      }
	    })
	  end
  end
end
