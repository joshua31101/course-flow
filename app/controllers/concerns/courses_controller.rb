class CoursesController < ApplicationController
  # GET
  # URL: /
  # Landing page with a search input bar
  def index
  end

  # GET
  # URL: /prereq_courses?course_name=
  # Find prerequisite courses from the course_name passed in from search input bar
  def search_prereq_courses
    if params[:course_name].present?
      render json: get_user_course_prereqs(params[:course_name]), status: :ok
    else
      render json: 'Opps.. we couldn\'t find a course. Try typing something like CS 1100', status: :forbidden
    end
  end

  private

  # @param course_name String - 'major course_number' ex) 'CS 1301'
  # @return course_prereqs Hash - course root parent
  def get_user_course_prereqs(course_name)
    course_info = course_name.split(' ')
    major = course_info[0]
    course_num = course_info[1].to_i

    if major.present? && course_num.present?
      _course_info = JsonHelper.courses[major][course_num]
      json_prereq_courses = {
        name: course_name,
        desc: _course_info.present? ? _course_info[:course_title] : '',
        children: []
      }
    end

    if JsonHelper.courses[major][course_num] && JsonHelper.courses[major][course_num][:prereq]
      JsonHelper.courses[major][course_num][:prereq].each do |prereq_course|
        json_prereq_courses[:children] << get_user_course_prereqs(prereq_course)
      end
    else
      return json_prereq_courses
    end

    return json_prereq_courses
  end
end
