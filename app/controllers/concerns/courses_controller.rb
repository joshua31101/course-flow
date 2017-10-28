class CoursesController < ApplicationController
  def index
  end

  def sample_json
    render json: JsonHelper.sample_json
  end
end
