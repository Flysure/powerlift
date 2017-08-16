class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :get_workouts
  def get_workouts
    @workouts = Workout.all
  end
end
