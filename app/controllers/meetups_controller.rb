class MeetupsController < ApplicationController

  # GET /meetups
  def index
    render json: Meetup.all
  end

  # GET /meetups/:id
  def show
    meetup = find_meetup
    render json: meetup
  end

  # PATCH /meetups/:id
  def update
    meetup = find_meetup
    meetup.update!(meetup_params)
    render json: meetup, status: :ok
  end

  # POST /meetups
  def create
    meetup = Meetup.create!(meetup_params)
    render json: meetup, status: :created
  end

  # DELETE /meetups/:id
  def destroy
    meetup = find_meetup
    meetup.destroy!
    head :no_content
  end

  private

  def meetup_params
    params.permit(:date, :time, :location, :reason)
  end

  def find_meetup
    Meetup.find(params[:id])
  end

end
