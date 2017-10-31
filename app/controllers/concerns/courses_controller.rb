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
      major = params[:course_name].split(' ')[0].upcase
      course_number = params[:course_name].split(' ')[1]
      render json: get_user_course_prereqs("#{major} #{course_number}"), status: :ok
    else
      render json: 'Opps.. we couldn\'t find a course. Try typing something like CS 3510', status: :forbidden
    end
  end

  private

  # @param course_name String - 'major course_number' ex) 'CS 1301'
  # @return course_prereqs Hash - course root parent
  def get_user_course_prereqs(course_name)
    if course_name.blank?
      return nil
    end

    course_info = course_name.split(' ')
    major = course_info[0]
    course_num = course_info[1]

    if major.present? && course_num.present?
      _course_info = JsonHelper.courses[major.to_sym][course_num.to_sym]
      json_prereq_courses = {
        name: course_name,
        desc: _course_info.present? ? _course_info[:course_title] : '',
        children: []
      }
    end

    if JsonHelper.courses[major.to_sym][course_num.to_sym] && JsonHelper.courses[major.to_sym][course_num.to_sym][:prereq]
      JsonHelper.courses[major.to_sym][course_num.to_sym][:prereq].each do |prereq_course|
        if prereq_course != ' '
          json_prereq_courses[:children] << get_user_course_prereqs(prereq_course)
        end
      end
    else
      return json_prereq_courses
    end

    return json_prereq_courses
  end
end
