class PeopleController < ApplicationController
  def index
    @people = Person.all
  end

  def show
    @person = Person.find(params[:id])
  end

  def new
    @person = Person.new
  end

  def delete
  end

  def create
    @person = Person.new(people_params)
    if @person.save
      redirect_to people_path
    else
      render :new
    end
  end

    private
  def people_params
    params.require(:person).permit(:first_name, :last_name, :hair_color, :eye_color, :age, :gender)
  end

end
