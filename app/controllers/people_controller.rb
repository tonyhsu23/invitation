class PeopleController < ApplicationController

  def index
  	@people = Person.all
  end

  def show
  	@people = Person.all
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
  		  redirect_to location_path
  	  else
  		  redirect_to :back
  	  end
    else
      redirect_to :back
    end

  end

  def destroy
  	@person = Person.find(params[:id])
  	@person.destroy
  	redirect_to people_path
  end

  private
  def person_params
	params.require(:person).permit(:ldap, :name, :attend)
  end

end
