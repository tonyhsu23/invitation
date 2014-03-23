class PeopleController < ApplicationController

  def index
  	@people = Person.all
  end

  def show
    @teacher = Person.where(position: 't')
    @assistant = Person.where(position: 'a')
  end

  def new
  	@person = Person.new
  end

  def create
  	@person = Person.new(person_params)

  	if @person.save
  		redirect_to people_path
  	else
  		render :new
  	end

  end

  def edit
  	@person = Person.find(params[:id])
  end

  def update
  	@person = Person.find_by ldap: params[:person][:ldap]
  	
    unless @person.blank?
  	  if @person.update(person_params)
  		  redirect_to location_path, notice: "感謝您撥冗填寫，我們已經收到您的回應。"
  	  else
  		  redirect_to :back, notice: "Sorry, wrong LDAP ID"
  	  end
    else
      redirect_to :back, notice: "Sorry, wrong LDAP ID"
    end

  end

  def destroy
  	@person = Person.find(params[:id])
  	@person.destroy
  	redirect_to people_path
  end

  private

  def person_params
	  params.require(:person).permit(:ldap, :name, :attend, :imgId, :position)
  end

end
